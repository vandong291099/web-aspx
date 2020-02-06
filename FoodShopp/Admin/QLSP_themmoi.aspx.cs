using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using FoodShopp.App_Code;


namespace FoodShopp.Admin
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_addfood(object sender, EventArgs e)
        {

            string name = name_food.Text;
            string desciption = des_food.Text;
            int price = Int32.Parse(price_food.Text.ToString());
            int price_promo = Convert.ToInt32(pricepromo_food.Text);
            string thumb1 = thumb.FileName;
            string img1 = img.FileName;
            string unit = unit_food.Text;
            int percent_promo = Convert.ToInt32(percentpromo_food.Text);
            int rating = Int32.Parse(rating_food.Text.ToString());
            int sold = Int32.Parse(sold_food.Text.ToString());
            int point = Int32.Parse(point_food.Text.ToString());
            int type = Int32.Parse(type_food.Text.ToString());
            int status = Convert.ToInt32(drstatus_food.SelectedValue);
            string username = ussername_food.Text;
            DateTime modified = DateTime.Parse(DateTime.Now.ToString());


            food Food = new food(name, desciption, price, price_promo, thumb1, img1, unit, percent_promo, rating, sold, point, type, status, username, modified);

            if (Food.addFood())
            {
                if (thumb.HasFile)
                {
                    string path = Server.MapPath("~/Admin/img" + thumb.FileName);
                    thumb.SaveAs(path);
                }
                if (img.HasFile)
                {
                    string path = Server.MapPath("~/Admin/img" + img.FileName);
                    img.SaveAs(path);
                }
                txtfkq.InnerHtml = "thành công";
                Response.Redirect("QLSP_danhsach.aspx");



            }
        }
    }
}