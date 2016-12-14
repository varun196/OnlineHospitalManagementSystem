using Classes;
using data_layer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hospital_management_system
{
    public partial class AdminEditDoctor : System.Web.UI.Page
    {
        doctor d;
       
        protected void Page_Init(object sender,EventArgs e)
        {
            DoctorClass ac = new DoctorClass();
            if (Session["EditDrId"] == null)
            {
                Server.Transfer("AdminViewDoctor.aspx");
            }

            d = ac.getDoctor(Int32.Parse(Session["EditDrId"].ToString()));
            ErrorL.Text = Session["EditDrId"].ToString();
            //Set PresentValues 
            //Copy paste from DoctorEditProfile    
            if (!this.IsPostBack)
            {
                dob.Text = d.dob.ToString("dd-MM-yyyy");
                Salary.Text = d.salary.ToString();
                first_name_tb.Text = d.name;
                Email_tb.Text = d.email;
                phoneno_tb.Text = d.phoneno;
                Address_tb.Text = d.address;
                Field.Text = d.field;
                Qualification.Text = d.qualification;
            }
        }
        protected void register_btn_Click(object sender, EventArgs e)
        {
            DoctorClass doc = new DoctorClass();

            d= getUpdatedDoctorObject();
            //Register 
            bool registerSucceeded = doc.editDoctor(d,true);


            
            if (registerSucceeded)
            {
                Response.Redirect("AdminViewDoctor.aspx");
            }
            else
            {
                ErrorL.Text = "Error";
            }
            
        }
        private doctor getUpdatedDoctorObject()
        {
            d.name = first_name_tb.Text;
            d.email = Email_tb.Text;
            d.phoneno = phoneno_tb.Text;
            d.dob = Convert.ToDateTime(dob.Text);
            d.address = Address_tb.Text;
            d.field = Field.Text;
            d.qualification = Qualification.Text;
            d.salary = Int64.Parse(Salary.Text);
            d.password = password_tb.Text;
            d.experience = "1";
        
            return d;
        }
    }
}