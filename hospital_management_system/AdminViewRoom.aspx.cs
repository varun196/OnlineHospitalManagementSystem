using System;
using System.Collections.Generic;

using System.Data.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Classes;
using data_layer;

namespace hospital_management_system
{
    public partial class AdminViewRoom : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                RoomClass rc = new RoomClass();

                GridView1.DataSource = rc.viewRooms();
                GridView1.DataBind();
            }
        }
        protected void add_click(object sender , EventArgs e)
        {
            Response.Redirect("AdminAddRoom.aspx");
        }
        protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            new RoomClass().deleteRoom(Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]));
            RoomClass rc = new RoomClass();

            GridView1.DataSource = rc.viewRooms();
            GridView1.DataBind();

        }
        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow && e.Row.RowIndex != GridView1.EditIndex)
            {
                (e.Row.Cells[0].Controls[0] as LinkButton).Attributes["onclick"] = "return confirm('Do you want to delete this row?');";
            }
        }

    }
}