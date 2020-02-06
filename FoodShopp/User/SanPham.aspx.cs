using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace FoodShopp.User
{
    public partial class SanPham : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Repreater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "add_to_cart")
            {
                HiddenField hr_id = (HiddenField)e.Item.FindControl("hr_id");
                HiddenField hr_name = (HiddenField)e.Item.FindControl("hr_name");
                HiddenField hr_price = (HiddenField)e.Item.FindControl("hr_price");
                HiddenField hr_img = (HiddenField)e.Item.FindControl("hr_img");


                DataTable dt = new DataTable();
                if (Session["cart"] == null)
                {
                    dt.Columns.Add("id");
                    dt.Columns.Add("name");
                    dt.Columns.Add("price");
                    dt.Columns.Add("img");
                    dt.Columns.Add("quan");
                }
                else
                {
                    dt = (DataTable)Session["cart"];
                }
                int iRow = KiemTraTonTai(dt, hr_id.Value);
                if (iRow != -1)
                {
                    dt.Rows[iRow]["quan"] = Convert.ToInt32(dt.Rows[iRow]["quan"]) + 1;
                }
                else
                {
                    DataRow dr = dt.NewRow();

                    dr["id"] = hr_id.Value;
                    dr["name"] = hr_name.Value;
                    dr["price"] = hr_price.Value;
                    dr["img"] = hr_img.Value;
                    dr["quan"] = 1;
                    dt.Rows.Add(dr);
                    Session["cart"] = dt;
                   
                }
                txtkq.InnerHtml=" Them thanh cong ";
               
            }
            else
                txtkq.InnerHtml = " Them that bai ";
        }
        private int KiemTraTonTai(DataTable dt, string id)
        {
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                if (dt.Rows[i]["id"].ToString() == id)
                {
                    return i;
                }

            }
            return -1;
        }
    }
}