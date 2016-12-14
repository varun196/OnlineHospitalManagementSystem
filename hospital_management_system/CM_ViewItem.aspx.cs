using Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hospital_management_system
{
    public partial class CM_ViewItem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CostManagerClass cmc = new CostManagerClass();
            gv1.DataSource = cmc.viewItems();
            gv1.DataBind();
        }

        protected void gv1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string id = gv1.SelectedRow.Cells[1].Text;
            Session["TempItemId"] = id;
            Response.Redirect("CM_EditItem.aspx");
        }
    }
}