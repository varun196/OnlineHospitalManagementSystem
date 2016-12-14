using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Classes;

namespace hospital_management_system
{
    public partial class AdminViewCheque : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CostManagerClass cmc=new CostManagerClass();
            gv1.DataSource = cmc.viewCheques();
            gv1.DataBind();
        }
    }
}