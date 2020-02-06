using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using FoodShopp.App_Code;

namespace FoodShopp.Admin
{
    public partial class QLSP_loaisp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void ThemTypeFood(object sender, EventArgs e)
        {


            string sTypeName = type_name.Text;
            int sTypePost = Int32.Parse(type_pos.Text.ToString());
            string sTypeImg = type_img.FileName;
            int sStatus = Convert.ToInt32(listStatus.SelectedValue);
            string sUsername = Username.Text;
            DateTime modified = DateTime.Parse(DateTime.Now.ToString());
        
            Food_type foodtype = new Food_type(sTypeName, sTypePost, sTypeImg, sStatus, sUsername, modified);
            if (foodtype.addTypeFood())
            {
                if (type_img.HasFile)
                {
                    string path = Server.MapPath("~/Admin/img/" + type_img.FileName);
                    type_img.SaveAs(path);
                }
               
                Session["add_typefood"] = "thành công";
                Response.Redirect("danhsach_loaisp.aspx");

            }
            else
            {
                Session["add_typefood"] = "thất bại";
            }
        }


    }
}