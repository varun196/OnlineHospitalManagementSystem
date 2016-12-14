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
    public partial class bill : System.Web.UI.Page
    {
     
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("default.aspx");
            }

            DataClassesDataContext dc = new DataClassesDataContext();
            var p = from patient in dc.GetTable<patient>() where patient.patientid == int.Parse(Session["pid"].ToString()) select patient;
            foreach(var pat in p)
            {
                patient_name_lb.Text = pat.fname+" "+  pat.mname +" "+ pat.lname;
                patient_gender_lb.Text = pat.gender;
                patient_age_lb.Text = pat.age;
                patient_bg_lb.Text = pat.bloodgroup;
            }
            var d = from doctor_case in dc.GetTable<doctor_case>() join doctor in dc.GetTable<doctor>() on doctor_case.doctorid equals doctor.doctorid where doctor_case.caseid == int.Parse(Request.QueryString["caseid"]) select new { doctor.name };
            foreach(var doc in d)
            {
                Doctorname_lb.Text += doc.name+",";
            }

            var query1 = from room_master in dc.GetTable<room_master>() where room_master.patientid == int.Parse(Session["pid"].ToString()) select room_master;
            foreach(var ro in query1)
            {
                roomno_lb.Text = ro.roomid.ToString();
            }
            var q = from case_master in dc.GetTable<case_master>() where case_master.caseid == int.Parse(Request.QueryString["caseid"]) select case_master;
            foreach(var c in q)
            {
                casemaster_no_lb.Text=c.caseid.ToString();
                casedate_lb.Text = c.date.ToString("dd-MM-yyyy");
              //  casefee_lb.Text = c.casefee.ToString() ;
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
            if(cnt!=0)
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
        int bill_id;
        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            DataClassesDataContext dc = new DataClassesDataContext();

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                 bill_id = int.Parse(billgv.DataKeys[e.Row.RowIndex].Value.ToString());
                //l1.Text = bill_id.ToString();
                var q = from bill_item in dc.GetTable<bill_item>() join item in dc.GetTable<item>() on bill_item.itemid equals item.itemid where bill_item.billid == bill_id select new {item.itemid, item.name, item.cost_per_item, bill_item.qty };
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

        protected void pay_btn_Click(object sender, EventArgs e)
        {
            DataClassesDataContext dc = new DataClassesDataContext();

            CostManagerClass cmc = new CostManagerClass();
            
            cmc.billPaid(bill_id);
            Response.Redirect("home.aspx");

        }


        // protected void pay_btn_Click(object sender, EventArgs e)
        /*{
            CostManagerClass cmc = new CostManagerClass();
           
            cmc.billPaid(bill_id);
            Response.Redirect("home.aspx");
        }*/

    }
}