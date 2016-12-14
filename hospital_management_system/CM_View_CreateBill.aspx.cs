using Classes;
using data_layer;
using System;
using System.Linq;

namespace hospital_management_system
{
    public partial class CM_CreateBill : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void CreateBill_click(object sender,EventArgs e)
        {
            CostManagerClass cm = new CostManagerClass();
            int cid = Int32.Parse(tb.Text);
            cm.createBill(cid);
           // Response.Redirect("CM_View_CreateBill.aspx");
        }
        protected void b1_Click(object sender, EventArgs e)
        {
            CostManagerClass cm = new CostManagerClass();
            IQueryable<bill_master> ib  = cm.viewBills(Int32.Parse(tb.Text));
            gv1.DataSource = ib;
            gv1.DataBind();
        }
        protected void gv1_OnSelectedIndexChanged(object sender, EventArgs e)
        {
            string id = gv1.SelectedRow.Cells[1].Text;
            Session["BillId"] = id;
            l1.Text = id;
            Response.Redirect("CM_ViewBillItems.aspx");
        }
    }
}