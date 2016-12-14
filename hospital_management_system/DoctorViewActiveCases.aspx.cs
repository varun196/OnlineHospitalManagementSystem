using Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hospital_management_system
{
    public partial class DoctorViewActivePatients : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["doctorname"] == null)
            {
                Response.Redirect("DoctorLogin.aspx");
            }
           

            DoctorClass doc = new DoctorClass();
            List<ActCases> ac =  doc.viewActiveCases(Int32.Parse(Session["doctorId"].ToString()));
            if (ac != null)
            {
                gvTab.DataSource = ac;
                gvTab.DataBind();
            }
            else
            {
                grid_not_visible.Text = "No Data Found.!";
            }
        }
        
    }
}