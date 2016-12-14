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
    public partial class AdminViewDoctor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            AdminClass ac = new AdminClass();
            List<doctor> ld = ac.viewDoctors();
            GridView1.DataSource = ld;
            GridView1.DataBind();
        }

        protected void OnSelectedIndexChanged(object sender, EventArgs e)
        {
            
            string id = GridView1.SelectedRow.Cells[1].Text;
            Session["EditDrId"] = id;
            Response.Redirect("AdminEditDoctor.aspx");
        }
    }
}
