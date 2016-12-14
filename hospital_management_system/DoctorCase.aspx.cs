using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using data_layer;
using Classes;
namespace hospital_management_system
{
    public partial class DoctorCase : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["doctorname"] == null)
            {
                Response.Redirect("DoctorLogin.aspx");
            }

            DataClassesDataContext dc = new DataClassesDataContext();
            var p = from x in dc.GetTable<case_master>()
                    join y in dc.GetTable<doctor_case>() on x.caseid equals y.caseid
                    join z in dc.GetTable<patient>() on x.patientid equals z.patientid
                   // join roo in dc.GetTable<room_master>() on z.patientid equals roo.patientid
                    where x.caseid == int.Parse(Request.QueryString["caseid"])
                    
                    select new { z.fname, z.mname, z.lname,z.gender,z.age,z.bloodgroup, };


            foreach (var pat in p)
            {
                patient_name_lb.Text = pat.fname + " " + pat.mname + " " + pat.lname;
                patient_gender_lb.Text = pat.gender;
                patient_age_lb.Text = pat.age;
                patient_bg_lb.Text = pat.bloodgroup;
              //  roomno_lb.Text = pat.roomid.ToString();
            }
            var roo = from room in dc.GetTable<room_master>() join pati in dc.GetTable<patient>() on room.patientid equals pati.patientid join case_master in dc.GetTable<case_master>() on pati.patientid equals case_master.patientid where case_master.caseid == int.Parse(Request.QueryString["caseid"]) select new { room.roomid };
            foreach (var  f in roo )
            {
                roomno_lb.Text = f.roomid.ToString();
            }
            var d = from doctor_case in dc.GetTable<doctor_case>() join doctor in dc.GetTable<doctor>() on doctor_case.doctorid equals doctor.doctorid where doctor_case.caseid == int.Parse(Request.QueryString["caseid"]) select new { doctor.name };
            foreach (var doc in d)
            {
                Doctorname_lb.Text = doc.name;
            }
            
            var q = from case_master in dc.GetTable<case_master>() where case_master.caseid == int.Parse(Request.QueryString["caseid"]) select case_master;
            foreach (var c in q)
            {
                if(c.examinationresult==null && c.treatments==null)
                {
                    add_new_bill_btn.Visible = false;
                    exam_lb.Text = "Please examine the case.!";
                }
                else
                {
                    updatecase_btn.Visible = false;
                }
                casemaster_no_lb.Text = c.caseid.ToString();
                casedate_lb.Text = c.date.ToString("dd-MM-yyyy");
              //  casefee_lb.Text = c.casefee.ToString();
                chiefcomplaint_lb.Text = c.chiefcomplaint;
                Examination_result_lb.Text = c.examinationresult;
                report_lb.Text = c.reportrequirement;
                treatmentplan_lb.Text = c.treatments;
                //treatmentfees_lb.Text = c.treatment_fee.ToString();


            }
            var query = from bill_master in dc.GetTable<bill_master>() where bill_master.caseid == int.Parse(Request.QueryString["caseid"]) select bill_master;
            int cnt = 0;
            foreach (var a in query)
            {
                cnt++;
            }
            if (cnt != 0)
            {

                billgv.DataSource = query;
                billgv.DataBind();
                billgv.BottomPagerRow.Visible = true;

            }
            else
            {
                grid_not_visible.Text = "No data found..!";
            }
        }

        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                int bill_id = int.Parse(billgv.DataKeys[e.Row.RowIndex].Value.ToString());
                //l1.Text = bill_id.ToString();
                DataClassesDataContext dc = new DataClassesDataContext();
                var q = from bill_item in dc.GetTable<bill_item>() join item in dc.GetTable<item>() on bill_item.itemid equals item.itemid where bill_item.billid == bill_id select new { item.itemid, item.name, item.cost_per_item, bill_item.qty };
                GridView itemgrid = e.Row.FindControl("itemgv") as GridView;
                itemgrid.DataSource = q;
                itemgrid.DataBind();

            }
        }

        protected void billgv_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            billgv.PageIndex = e.NewPageIndex;
            billgv.DataBind();
        }

        protected void add_new_bill_btn_Click(object sender, EventArgs e)
        {
            CostManagerClass cm = new CostManagerClass();
            int billid = cm.createBill(int.Parse(Request.QueryString["caseid"]));
            if (billid>0)
            {
                Response.Redirect("DoctorCaseAddNewBill.aspx?billid="+billid);
            }
        }

        protected void updatecase_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("DoctorExamineCase.aspx?caseid=" + Request.QueryString["caseid"]);
        }
    }
}
