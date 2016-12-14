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
    public partial class DoctorCaseAddNewBill : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["doctorname"] == null)
            {
                Response.Redirect("DoctorLogin.aspx");
            }
            DataClassesDataContext dc = new DataClassesDataContext();
            if (!this.IsPostBack)
            {
                var query = from item in dc.GetTable<item>() select item;
                foreach (var b in query)
                {
                    ListItem it = new ListItem();
                    it.Text = b.name;
                    it.Value = b.itemid.ToString();
                    itemname_dd.Items.Add(it);
                }
            }
           
           
        }

        protected void add_item_into_bill_btn_Click(object sender, EventArgs e)
        {
            int cnt1=0;
            CostManagerClass cm = new CostManagerClass();
            DataClassesDataContext dc = new DataClassesDataContext();
            //var query = from item in dc.GetTable<item>() where item.name == itemname_dd.SelectedItem.Text select item;
            //foreach(var q in query)
            var c = from bill_item in dc.GetTable<bill_item>() where bill_item.billid == int.Parse(Request.QueryString["billid"]) select bill_item;
            foreach (var a in c)
            {
                if(a.itemid == int.Parse(itemname_dd.SelectedItem.Value))
                {
                    cnt1 = 1;
                }

            }
            if (cnt1 == 0)
            {
                if (cm.addItemsToBill(int.Parse(Request.QueryString["billid"]), int.Parse(itemname_dd.SelectedItem.Value), int.Parse(qty_tb.Text)))
                {
                    int cnt = 0;
                    var q = from bill_item in dc.GetTable<bill_item>() join item in dc.GetTable<item>() on bill_item.itemid equals item.itemid where bill_item.billid == int.Parse(Request.QueryString["billid"]) select new { item.itemid, item.name, item.cost_per_item, bill_item.qty };
                    foreach (var a in q)
                    {
                        cnt++;
                    }
                    if (cnt >= 1)
                    {
                        item_grid.DataSource = q;
                        item_grid.DataBind();
                    }
                    else
                    {
                        grid_not_visible.Text = "No Data Found.!";
                    }
                }
            }
            else
            {
                l1.Text = "you already selected " + itemname_dd.SelectedItem.Text;
            }
            
        }
    }
}