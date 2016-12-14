using Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hospital_management_system
{
    public partial class CM_ViewBillItems : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["BillId"] == null)
            {
                Response.Redirect("CM_View_CreateBill.aspx");
            }
            CostManagerClass cm = new CostManagerClass();
            List<ItemsInBill> x = cm.viewItemsInBill(Int32.Parse(Session["BillId"].ToString()));
            gv1.DataSource = x;
            gv1.DataBind();
        }
        protected void AddItems_click(object s,EventArgs e)
        {
            Response.Redirect("CM_AddInBill.aspx");
        }
    }
}