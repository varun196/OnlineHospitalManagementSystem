using data_layer;
using System;
using System.Collections.Generic;
using Classes;
using System.Linq;

namespace hospital_management_system
{
    public partial class AdminPaySalary : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            l1.Text = "";
        }
        protected void pay(object sender,EventArgs e)
        {
            CostManagerClass cmc = new CostManagerClass();
             bool res= cmc.giveSalaries();
            if (res == false)
            {
                l1.Text = "Not Enough Balance. NONE Of the doctors have been paid " ;
            }
            else
            {
                Response.Redirect("AdminSeeHistory.aspx");
            }
        }
    }
}