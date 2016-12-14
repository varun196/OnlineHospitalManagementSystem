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
    public partial class DoctorExamineCase : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["doctorname"] == null)
            {
                Response.Redirect("DoctorLogin.aspx");
            }

        }

        protected void update_case_btn_Click(object sender, EventArgs e)
        {
            DataClassesDataContext dc = new DataClassesDataContext();
            var query = (from case_master in dc.GetTable<case_master>() where case_master.caseid == int.Parse(Request.QueryString["caseid"]) select case_master).SingleOrDefault();
            query.examinationresult = Examination_result_tb.Text;
            query.reportrequirement = report_tb.Text;
            query.treatments = treatmentplan_tb.Text;
            query.ailments = ailment_tb.Text;
            dc.SubmitChanges();
            Response.Redirect("DoctorCase.aspx?caseid=" + Request.QueryString["caseid"]);
        }
    }
}