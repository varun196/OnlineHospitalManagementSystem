using Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hospital_management_system
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["doctorname"] == null)
            {
                Response.Redirect("DoctorLogin.aspx");
            }

            DoctorClass doc = new DoctorClass();
            var query = doc.getDoctorAsQueryable(Int32.Parse(Session["doctorId"].ToString()));
            foreach(var d in query)
            {
                doctor_name_lb.Text = d.name;
                dob_lb.Text = d.dob.ToString("dd-MM-yyyy");
                doctor_age_lb.Text = d.age.ToString();
                doctor_qualification_lb.Text = d.qualification;
                doctor_field_lb.Text = d.field;
                Experience_lb.Text = d.experience.ToString() + " Years";
                phoneno_lb.Text = d.phoneno;
                address_lb.Text = d.address;
                email_lb.Text = d.email;
            }
        }
    }
}