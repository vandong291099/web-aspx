using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
namespace FoodShopp.App_Code
{
    public static class DataProvider
    {
       

        private static SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-3ASRSJA;Initial Catalog=Food_DB;Integrated Security=True");
        private static void Connect()
        {
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
        }
        public static bool executeNonquery(string query, SqlParameter[] paras)
        {
            try
            {
                Connect();
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddRange(paras);
                cmd.ExecuteNonQuery();
                conn.Close();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }
        public static int executeScalar(string sQuery, SqlParameter[] paras)
        {
            try
            {
                Connect();
                SqlCommand cmd = new SqlCommand(sQuery, conn);
                cmd.Parameters.AddRange(paras);
                cmd.ExecuteNonQuery();
                sQuery = "select @@identity";
                cmd = new SqlCommand(sQuery, conn);
                int id = (int)cmd.ExecuteScalar();
                conn.Close();
                return id;
            }
            catch (Exception ex)
            {
                return -1;
            }
        }
        public static int executeScalar(string sQuery)
        {
            try
            {
                Connect();
                SqlCommand cmd = new SqlCommand(sQuery, conn);


                int id = (int)cmd.ExecuteScalar();
                conn.Close();
                return id;
            }
            catch (Exception ex)
            {
                return -1;
            }
        }
        public static DataTable getDataTable(string sQuery, SqlParameter[] paras)
        {
            try
            {
                Connect();
                SqlDataAdapter da = new SqlDataAdapter(sQuery, conn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        public static DataTable getDataTable(string sQuery)
        {
            try
            {
                Connect();
                SqlDataAdapter da = new SqlDataAdapter(sQuery, conn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;
            }
            catch (Exception ex)
            {
                return null;
            }
        }
    }
}