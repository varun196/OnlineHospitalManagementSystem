using Classes;
using data_layer;
using System;

namespace hospital_management_system
{
    public partial class CM_EditItem : System.Web.UI.Page
    {
        int x;
        item i;

        CostManagerClass cm = new CostManagerClass();
        protected void Page_Init(object sender, EventArgs e)
        {
            if (Session["TempItemId"] == null)
            {
                Response.Redirect("CM_ViewItem.aspx");
            }
            i = cm.getItem(Int32.Parse(Session["TempItemId"].ToString()));

            Name_tb.Text = i.name;
            Cost_tb.Text = i.cost_per_item.ToString();
        }
        protected void register_btn_Click(object sender, EventArgs e)
        {
                item y = new item();
                y.name = Name_tb.Text;
                y.cost_per_item = Int32.Parse(Cost_tb.Text);
                y.itemid = Int32.Parse(Session["TempItemId"].ToString());
     
                bool bo = cm.modifyItem(y);

            Response.Redirect("CM_ViewItem.aspx");
                     
        }
      
    }
}