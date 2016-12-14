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
    public partial class CM_AddItem : System.Web.UI.Page
    {
        protected void register_btn_Click(object sender, EventArgs e)
        {
            item i = new item();
            i.name = Name_tb.Text;
            i.cost_per_item = Int32.Parse(Cost_tb.Text);
            CostManagerClass cm = new CostManagerClass();
            cm.addItem(i);
        }
    }
}