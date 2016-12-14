using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using data_layer;

using Classes;
namespace hospital_management_system
{
    public partial class room : System.Web.UI.Page
    {
        internal object patientid;

        protected void Page_Load(object sender, EventArgs e)
        {
            DataClassesDataContext dc = new DataClassesDataContext();
            
        }
    }
}