using Classes;
using System;

namespace hospital_management_system
{
    public partial class AdminSeeHistory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CostManagerClass cmc = new CostManagerClass();
            gv1.DataSource =cmc.viewCostHistory();
            gv1.DataBind();
        }
    }
}