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
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void login_Click(object sender, EventArgs e)
        {
            CommonClass cm = new CommonClass();
            DataClassesDataContext dc = new DataClassesDataContext();
            patient p = new patient();
            p.email = email_tb.Text;
            p.password = password_tb.Text;
            bool b = cm.login(p);
            if (b)
            {
                var q = from patient in dc.GetTable<patient>() where patient.email == email_tb.Text && patient.password == password_tb.Text select patient;
                foreach (var a in q)
                {
                    Session["username"] = a.fname;
                    Session["pid"] = a.patientid;
                }

              //  Session["username"] = email_tb.Text;
                Response.Redirect("home.aspx");
            }
            else
            {
                error.Text = "email or password is incorrect.!";
                //Response.Redirect("login.aspx");
            }

        }
    }
}