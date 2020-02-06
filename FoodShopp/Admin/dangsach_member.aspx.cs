﻿using System;
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
    public partial class dangsach_member : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-3ASRSJA;Initial Catalog=Food_DB;Integrated Security=True");
            string sQuery = "";
            sQuery = "Select * from member";
            if (Request["key"] != null)
            {
                sQuery = sQuery + " where name like '%" + Request["key"].ToString() + "%'";
            }
            if (Request["del"] != null)
            {
                sQuery = "Delete from member where username = '" + Request["del"].ToString() + "'";
                txtResult.InnerHtml = "Xóa thành công";
            }
            if (Request["update"] != null)
            {
                sQuery = "select * from member where username = '" + Request["update"].ToString() + "'";
                SqlDataAdapter lst = new SqlDataAdapter(sQuery, con);
                DataTable user = new DataTable();
                lst.Fill(user);
                //txtTenDangNhap.Text = user.Rows[0]["username"].ToString();
                //txtTenHienThi.Text = user.Rows[0]["name"].ToString();
                //txtPhone.Text = user.Rows[0]["phone"].ToString();
                //ddlStatus.SelectedValue = user.Rows[0]["status"].ToString();
                //ddlRole.SelectedValue = user.Rows[0]["role"].ToString();

                //txtTenDangNhap.Enabled = false;
                //btnRegister.Text = "Update";
            }
            SqlDataAdapter da = new SqlDataAdapter(sQuery, con);
            DataTable dt = new DataTable();
            da.Fill(dt);

            int so_item_1trang = 3;
            int so_trang = dt.Rows.Count / so_item_1trang + (dt.Rows.Count % so_item_1trang == 0 ? 0 : 1);
            int page = Request["page"] == null ? 1 : Convert.ToInt32(Request["page"]);
            int from = (page - 1) * 3;
            int to = page * 3 - 1;
            for (int i = dt.Rows.Count - 1; i >= 0; i--)
            {
                if (i < from || i > to)
                {
                    dt.Rows.RemoveAt(i);
                }
            }
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
            DataTable dtPage = new DataTable();
            dtPage.Columns.Add("index");
            dtPage.Columns.Add("active");
            for (int i = 1; i <= so_trang; i++)
            {
                DataRow dr = dtPage.NewRow();
                dr["index"] = i;

                if ((Request["page"] == null && i == 1) || (Request["page"] != null && Convert.ToInt32(Request["page"]) == i))
                    dr["active"] = 1;
                else
                    dr["active"] = 0;
                dtPage.Rows.Add(dr);
            }
            Repeater2.DataSource = dtPage;
            Repeater2.DataBind();


        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            Response.Redirect("dangsach_member.aspx?Key=" + txtKey.Text);
        }

    }
}