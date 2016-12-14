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
    public partial class DoctorEditProfile : System.Web.UI.Page
    {
        DoctorClass doc = new DoctorClass();
        doctor d;

        protected void Page_Init(object sender, EventArgs e)
        {
           
            d = doc.getDoctor(Int32.Parse(Session["doctorId"].ToString()));
            //Set PresentValues
            Email_tb.Text = d.email;
            phoneno_tb.Text = d.phoneno;
            Address_tb.Text = d.address;
            
        }
        protected void register_btn_Click(object sender, EventArgs e)
        {
            DoctorClass doc = new DoctorClass();
            
            doctor d = getUpdatedDoctorObject();
            //Register 
             bool registerSucceeded = doc.editDoctor(d,false);
           
            if (registerSucceeded)
            {
                ErrorL.InnerText = "Succeed";
            }
            else
            {
                ErrorL.InnerText = "Error";
            }
        }
        private doctor getUpdatedDoctorObject()
        {
                 
            d.email = Email_tb.Text;
            d.phoneno = phoneno_tb.Text;
            d.address = Address_tb.Text;
            d.password = password_tb.Text;  

            return d;
        }
    
}
}