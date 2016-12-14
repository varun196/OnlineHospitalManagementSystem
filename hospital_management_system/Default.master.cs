using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hospital_management_system
{
    public partial class Default : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["username"]==null)
            {
                profile_name.Visible = false;
               
            }
            else
            {
                p1.Visible = false;
                profile_name.Text = Session["username"].ToString();
            }
        }
    }
}