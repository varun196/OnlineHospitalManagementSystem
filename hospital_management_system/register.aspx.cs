using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using data_layer;
using System.IO;
using Classes;
namespace hospital_management_system
{
    public partial class register : System.Web.UI.Page
    {
        byte[] pic;
        string path;
        string imgname;
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void register_btn_Click(object sender, EventArgs e)
        {
            cptCaptcha.ValidateCaptcha(txtCaptcha.Text.Trim());
            if (cptCaptcha.UserValidated)
            {
                lblErrorMessage.ForeColor = System.Drawing.Color.Green;
                lblErrorMessage.Text = "Valid text";
                if (ViewState["pictureurl"] != null)
                {
                    CommonClass c = new CommonClass();
                    //Create Patient class and assign values to it.
                    patient p = createPatientObject();
                    //Register Patient
                    int registerSucceeded = c.Register(p);

                    if (registerSucceeded > 0)
                    {
                        Session["pid"] = registerSucceeded;

                        Response.Redirect("home.aspx");
                    }
                }
                else
                {
                    file_error_lb.Text = "please select an image file..!";
                }
            }
            else
            {
                lblErrorMessage.ForeColor = System.Drawing.Color.Red;
                lblErrorMessage.Text = "InValid Text";
            }


        }

        private patient createPatientObject()
        {
            patient p = new patient();
            p.fname = first_name_tb.Text;
            p.mname = mid_name_tb.Text;
            p.lname = last_name_tb.Text;
            p.gender = gender_dl.SelectedItem.Text;
            p.phoneno = phoneno_tb.Text;
            p.maritalstatus = DropDownList1.SelectedItem.Text;
            p.bloodgroup = DropDownList2.SelectedItem.Text;
            p.dob = Convert.ToDateTime(dob.Text);
            p.address = Address_tb.Text;
            p.email = Email_tb.Text;
            p.occupation = occupation_tb.Text;
            p.pictureurl = ViewState["pictureurl"].ToString();
            p.password = password_tb.Text;
            p.age = (DateTime.Today.Year - p.dob.Year).ToString();
            Session["username"] = first_name_tb.Text;
            return p;

        }

        protected void upload_btn_Click(object sender, EventArgs e)
        {
            if (!fileupload.HasFile)
            {
                file_error_lb.Visible = true;
                file_error_lb.Text = "Please Select Image File";    //checking if file uploader has no file selected


            }
            else
            {
                string extension = Path.GetExtension(fileupload.PostedFile.FileName); ;
                using (System.Drawing.Image myImage =
              System.Drawing.Image.FromStream(fileupload.PostedFile.InputStream))
                {
                    if (myImage.Height == 150 && myImage.Width == 150 && (extension.ToLower() == ".png" || extension.ToLower() == ".jpg"))
                    {

                        file_error_lb.Visible = true;
                        file_error_lb.Text = "Image Uploaded Sucessfully";  //after Sucessfully uploaded image


                        int length = fileupload.PostedFile.ContentLength;
                        pic = new byte[length];
                        imgname = fileupload.FileName;
                        path = "~/patientimages/" + imgname;

                        fileupload.PostedFile.SaveAs(Server.MapPath(path));
                        patient_pic.ImageUrl = path;
                        ViewState["pictureurl"] = path;


                    }
                    else
                    {

                        file_error_lb.Text = "image should be uploaded with only jpg and png format and size should be 150*150..! ";
                    }
                }
            }


        }

        protected void Email_tb_TextChanged(object sender, EventArgs e)
        {
            int cnt = 0;
            DataClassesDataContext dc = new DataClassesDataContext();
            patient p = new patient();
            p.email = Email_tb.Text;
            var q = (from patient in dc.GetTable<patient>() where p.email == patient.email select patient);
            foreach (var a in q)
            {
                cnt++;
            }
            if (cnt > 0)
            {
                email_error.Text = "email id is already used..!";
                register_btn.Enabled = false;
            }
            else if (cnt == 0)
            {
                email_error.Text = "";
                register_btn.Enabled = true;
            }
        }
    }
}