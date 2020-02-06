using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FoodShopp.App_Code;
using System.Data;
using System.Data.SqlClient;
namespace FoodShopp.Admin
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

       

        protected void Create_Click(object sender, EventArgs e)
        {
            string username = txtTenDangNhap.Text;
            string name = txtTenHienThi.Text;
            string pass = txtPass.Text;
            string phone = txtPhone.Text;
            int status = Convert.ToInt32(ddlStatus.SelectedValue);
            int role = Convert.ToInt32(ddlRole.SelectedValue);
            

            Account mem = new Account(username, name, pass, phone, status, role);
            if (mem.Addmember())
            {
                Response.Redirect("dangsach_member.aspx");
               
            }
            else
            {
                lbl_checkUser.Text = "Username đã tồn tại";
                txtkq.InnerHtml = "fail!";
            }
        }
      
    }
}