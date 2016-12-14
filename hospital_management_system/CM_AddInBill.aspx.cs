using Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hospital_management_system
{
    public partial class CM_AddInBill : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["BillId"] == null)
            {
                Response.Redirect("CM_View_CreateBill.aspx");
            }
        }
        protected void Button_click(object s,EventArgs e)
        {
            CostManagerClass cm = new CostManagerClass();
            int billid = Int32.Parse(Session["BillId"].ToString());
            int itemid = Int32.Parse(tb.Text);
            int qty    = Int32.Parse(tb2.Text); 
              
            cm.addItemsToBill(billid,itemid ,qty );
            Response.Redirect("CM_ViewBillItems.aspx");
        }
    }
}