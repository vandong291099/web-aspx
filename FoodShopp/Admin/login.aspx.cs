using FoodShopp.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace FoodShopp.Admin
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public bool kiemtralogin(string ten,string pass)
        {
            string Chuoiketnoi = @"Data Source=DESKTOP-3ASRSJA;Initial Catalog=Food_DB;Integrated Security=True";
            SqlConnection conn = new SqlConnection(Chuoiketnoi);
            conn.Open();
            string sQuery = string.Format("SELECT username, pass  FROM [dbo].[member] WHERE [username]='{0}' AND [pass]='{1}' ", ten, pass);
            SqlCommand com = new SqlCommand(sQuery, conn);
            SqlDataReader dr = com.ExecuteReader();
            bool ketqua = dr.HasRows;
            dr.Close();
            conn.Close();
            return ketqua;
        }

        protected void buttonlogin_Click(object sender, EventArgs e)
        {
            
            if (kiemtralogin(txt_tendangnhap.Text,txt_password.Text))
            {
                txtkq.InnerHtml = " Pass ! ";
                Session["login"] = txt_tendangnhap.Text;                
                Response.Redirect("dangsach_member.aspx");


            }
            else
            {
                txtkq.InnerHtml = "fail !";
            }



        }
    }
}