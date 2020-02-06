using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace FoodShopp.User
{
    public partial class GioHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cart"] != null)
            {
                //int sum = 0;
                DataTable dt = new DataTable();
                dt = (DataTable)Session["cart"];
                Repeater1.DataSource = dt;
                Repeater1.DataBind();
              
            }
        }
    }
}