using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
namespace FoodShopp.App_Code
{
    public class Order
    {
        private int _order_id;
        private string _cus_name;
        private string _cus_phone;
        private string _cus_add;
        private int _quan;
        private decimal _sum;
        private int _status;
        private DateTime _modified;
        private DateTime _created;
        private string _cus_username;

        public int Order_id { get => _order_id; set => _order_id = value; }
        public string Cus_name { get => _cus_name; set => _cus_name = value; }
        public string Cus_phone { get => _cus_phone; set => _cus_phone = value; }
        public string Cus_add { get => _cus_add; set => _cus_add = value; }
        public int Quan { get => _quan; set => _quan = value; }
        public decimal Sum { get => _sum; set => _sum = value; }
        public int Status { get => _status; set => _status = value; }
        public DateTime Modified { get => _modified; set => _modified = value; }
        public DateTime Created { get => _created; set => _created = value; }
        public string Cus_username { get => _cus_username; set => _cus_username = value; }

        public Order(string cus_name, string cus_phone, string cus_add, int quan, int sum, int stt, DateTime modified, DateTime created, string cus_username)
        {
            this._cus_name = cus_name;
            this._cus_phone = cus_phone;
            this._cus_add = cus_add;
            this._quan = quan;
            this._sum = sum;
            this._status = stt;
            this._modified = modified;
            this._created = created;
            this._cus_username = cus_username;
        }
        public bool addOrder()
        {
            string sQuery = "INSERT INTO [Food_DB].[dbo].[order_bill]([cus_name]           ,[cus_phone]           ,[cus_add]           ,[quan]           ,[sum]           ,[status]           ,[modified]           ,[created]           ,[cus_username]) VALUES (@cus_name ,@cus_phone ,@cus_add,@quan,@sum,@stt,@modified,@created,@cus_username) ";


            SqlParameter[] paras = {
            new SqlParameter("@cus_name",this._cus_name),
            new SqlParameter("@cus_phone", this._cus_phone),
            new SqlParameter("@cus_add",this._cus_add),
            new SqlParameter("@quan",this._quan),
            new SqlParameter("@sum",this._sum),
            new SqlParameter("@stt",this._status),
            new SqlParameter("@modified", this._modified),
            new SqlParameter("@created",this._created),
            new SqlParameter("@cus_username",this._cus_username),

        };
            return DataProvider.executeNonquery(sQuery, paras);
        }
    }
}