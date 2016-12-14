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
    public partial class home1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)

        {
           case_range.MinimumValue = DateTime.Today.ToString("dd-MM-yyyy");
            case_range.MaximumValue = DateTime.Today.AddMonths(3).ToString("dd-MM-yyyy");
            if (Session["username"] == null)
            {
                Response.Redirect("default.aspx");
            }
            else
            {

                DataClassesDataContext dc = new DataClassesDataContext();

                   var profile = from patient in dc.GetTable<patient>() where patient.patientid == int.Parse(Session["pid"].ToString()) || patient.fname == Session["username"].ToString() select patient;
                     foreach (var p in profile)
                     {
                    patient_pic.ImageUrl = p.pictureurl.ToString();
                    name.Text = p.fname + p.lname;
                    patient_name_lb.Text = p.fname +" "+ p.mname +" "+ p.lname;
                    patient_gender_lb.Text = p.gender;
                    dob_lb.Text = p.dob.ToString("dd-MM-yyyy");
                    patient_age_lb.Text = p.age.ToString();
                    maritalstatus_lb.Text = p.maritalstatus;
                    patient_bg_lb.Text = p.bloodgroup;
                    email_lb.Text = p.email;
                    phoneno_lb.Text = p.phoneno;
                    address_lb.Text = p.address;
                     }
                var myquery = from case_master in dc.GetTable<case_master>() where case_master.patientid == int.Parse(Session["pid"].ToString()) select case_master;
                int cnt = 0;
                foreach (var cases in myquery)
                {
                    cnt++;
                }
                if (cnt != 0)
                {
                    var query = from case_master in dc.GetTable<case_master>() join patient in dc.GetTable<patient>() on case_master.patientid equals patient.patientid where case_master.patientid == int.Parse(Session["pid"].ToString()) || patient.fname == Session["username"].ToString() select case_master;
                    gvTab.DataSource = query;
                    gvTab.DataBind();
                }
                else if(cnt==0)
                {
                   // gvTab.DataSource = myquery;
                   // gvTab.DataBind();
                    grid_not_visible.Text = "No data found";
                }
            }

        }

        protected void submit_appointment_btn_Click(object sender, EventArgs e)
        {
            DataClassesDataContext dc = new DataClassesDataContext();
            case_master c = new case_master();
            c.patientid = int.Parse(Session["pid"].ToString());
            c.date = Convert.ToDateTime(case_date.Text);
            c.chiefcomplaint = chief_complaint_tb.Text;
            c.isactive = "yes";
            dc.case_masters.InsertOnSubmit(c);
            dc.SubmitChanges();
            doctor_case doc_case = new doctor_case();

            var cas = from case_master in dc.GetTable<case_master>() where case_master.patientid == int.Parse(Session["pid"].ToString()) && case_master.date == Convert.ToDateTime(case_date.Text) && case_master.chiefcomplaint == chief_complaint_tb.Text select case_master;
            foreach(var ca in cas)
            {doc_case.caseid=
                ca.caseid;
            }
            var query = from doctor in dc.GetTable<doctor>() where doctor.field == consult.SelectedItem.Text select doctor;
            foreach(var doc in query)
            {
                doc_case.doctorid = doc.doctorid;
            }
            dc.doctor_cases.InsertOnSubmit(doc_case);
            dc.SubmitChanges();
            Response.Redirect("home.aspx");
        }
    }
}