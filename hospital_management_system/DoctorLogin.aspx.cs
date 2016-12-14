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
    public partial class DoctorLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_btn_Click(object sender, EventArgs e)
        {
            if (email_tb.Text == "admin" && password_tb.Text == "admin")
            {
                Session["admin"] = 1;
                Response.Redirect("AdminHome.aspx");
            }
            DoctorClass cm = new DoctorClass();
            DataClassesDataContext dc = new DataClassesDataContext();
            doctor p = new doctor();
            p.email = email_tb.Text;
            p.password = password_tb.Text;
            bool b = cm.login(p);
            if (b)
            {
                var q = from doctor in dc.GetTable<doctor>() where doctor.email == email_tb.Text && doctor.password == password_tb.Text select doctor;
                foreach (var a in q)
                {
                    Session["doctorname"] = a.name;
                    Session["doctorId"] = a.doctorid;
                }

                //  Session["username"] = email_tb.Text;
                Response.Redirect("DoctorHome.aspx");
            }
            else
            {
                error.Text="email or password is incorrect";
                //Response.Redirect("login.aspx");
            }

        }
    }
}