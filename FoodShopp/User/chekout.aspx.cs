using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FoodShopp.App_Code;
namespace FoodShopp.User
{
    public partial class chekout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ThemMoi_Click(object sender, EventArgs e)
        {
            string cus_name = txtName.Text;
            string cus_phone = txtphone.Text;
            string cus_add = txtCus_add.Text;
            int quan = Int32.Parse(txtQuan.Text.ToString());
            int sum = Int32.Parse(txtsum.Text.ToString());
            int stt = Convert.ToInt32(ddl_status.SelectedValue);
          
            DateTime modified = DateTime.Parse(DateTime.Now.ToString());
            DateTime created = DateTime.Parse(DateTime.Now.ToString());
            string cus_username = txtCus_Username.Text;
            FoodShopp.App_Code.Order order = new Order(cus_name, cus_phone, cus_add, quan, sum, stt, modified, created, cus_username);
            if (order.addOrder())
            {
                Response.Redirect("chekout.aspx");
               

                
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "Swal.fire({ icon: '', text: 'Thêm thất bại' })", true);
               
            }
        }

    }
}