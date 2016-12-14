using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using data_layer;
using Classes;
using System.IO;
using System.Data.SqlClient;

namespace hospital_management_system
{
    public partial class patienteditprofile : System.Web.UI.Page
    {
        byte[] pic;
        string path;
        string imgname;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("default.aspx");
            }

            DataClassesDataContext dc = new DataClassesDataContext();
            var query = from patient in dc.GetTable<patient>() where patient.patientid == int.Parse(Session["pid"].ToString()) select patient;
            if (!this.IsPostBack)
            {
                foreach (var d in query)
                {
                    first_name_tb.Text = d.fname;
                    mid_name_tb.Text = d.mname;
                    last_name_tb.Text = d.patientid.ToString();
                    gender_dl.SelectedItem.Text = d.gender;
                    phoneno_tb.Text = d.phoneno;
                    DropDownList1.SelectedItem.Text = d.maritalstatus;
                    DropDownList2.SelectedItem.Text = d.bloodgroup;
                    dob.Text = d.dob.ToString("dd-MM-yyyy");
                    Address_tb.Text = d.address;
                    occupation_tb.Text = d.occupation;
                    patient_pic.ImageUrl = d.pictureurl;
                    ViewState["pictureurl"] = d.pictureurl;

                }
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
           /// p.email = Email_tb.Text;
            p.occupation = occupation_tb.Text;
            p.pictureurl = ViewState["pictureurl"].ToString();
            p.password = password_tb.Text;
            p.age = (DateTime.Today.Year - p.dob.Year).ToString();
           // Session["username"] = first_name_tb.Text;
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

        protected void edit_btn_Click(object sender, EventArgs e)
        {
            if (ViewState["pictureurl"] != null)
            {
                DataClassesDataContext dc = new DataClassesDataContext();
                 var pat1 = from t1 in dc.patients where t1.patientid == (int)Session["pid"] select t1;
                foreach (var p in pat1)
                {
                       p.fname = first_name_tb.Text;
                    Session["username"] = first_name_tb.Text;
                        p.mname = mid_name_tb.Text; 
                        p.lname = last_name_tb.Text;
                        p.gender = gender_dl.SelectedItem.Text;
                        p.phoneno = phoneno_tb.Text;
                        p.maritalstatus = DropDownList1.SelectedItem.Text;
                        p.bloodgroup = DropDownList2.SelectedItem.Text; 
                        p.dob = Convert.ToDateTime(dob.Text);
                        p.address = Address_tb.Text;
                        /// p.email = Email_tb.Text;
                        p.occupation = occupation_tb.Text;
                        p.pictureurl = ViewState["pictureurl"].ToString(); 
                        p.password = password_tb.Text; 
                        p.age = (DateTime.Today.Year - p.dob.Year).ToString();
                    dc.SubmitChanges();

                }

            

                    //Register Patient

                   Response.Redirect("home.aspx");

                }
            
            else
            {
                file_error_lb.Text = "please select an image file..!";
            }
        }
    }
}