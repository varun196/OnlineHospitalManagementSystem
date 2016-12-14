using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Classes;
using data_layer;

namespace hospital_management_system
{
    public partial class AdminAddRoom : System.Web.UI.Page
    {
        protected void Add_click(object sender, EventArgs e)
        {
            RoomClass rc = new RoomClass();
            room_master r = new room_master();
            r.roomtype = type_tb.Text;
            r.roomcost = Int32.Parse(Cost_tb.Text);
            rc.addRoom(r);
            Response.Redirect("AdminViewRoom.aspx");
        }

    }
}