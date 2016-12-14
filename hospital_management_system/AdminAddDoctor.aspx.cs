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
    public partial class AdminAddDoctor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void register_btn_Click(object sender, EventArgs e)
        {
            AdminClass a = new AdminClass();
            //Create Patient class and assign values to it.
            doctor d = createDoctorObject();
            bool alreadyRegistered = a.registered(d);
            if (alreadyRegistered)
            {
                ErrorL.Text = "Already Registered";
            }
            else
            {
                //Register Patient
                bool registerSucceeded = a.addDoctor(d);

                if (registerSucceeded == true)
                {
                    Response.Redirect("AdminViewDoctor.aspx");
                }
                else
                {
                    ErrorL.Text = "Whoops";
                }
            }
            
        }

       

        private doctor createDoctorObject()
        {

            doctor d = new doctor();

            
            d.name = first_name_tb.Text;
            d.email = Email_tb.Text;
            d.phoneno = phoneno_tb.Text;
            d.dob = Convert.ToDateTime(dob.Text);
            d.address = Address_tb.Text;
            d.field = Field.Text;
            d.qualification = Qualification.Text;
            d.salary =Int64.Parse(Salary.Text);
            d.password = password_tb.Text;
            d.experience = "1" ;
            

            return d;

        }
    }
}