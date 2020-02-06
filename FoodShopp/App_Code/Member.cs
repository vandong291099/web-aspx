using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
namespace FoodShopp.App_Code
{
    public class Account
    {
        private string _username;
        private string _pass;
        private string _name;
        private string _phone;
        private int _status;
        private int _role;

        public string Username { get => _username; set => _username = value; }
        public string Pass { get => _pass; set => _pass = value; }
        public string Name { get => _name; set => _name = value; }
        public string Phone { get => _phone; set => _phone = value; }
        public int Status { get => _status; set => _status = value; }
        public int Role { get => _role; set => _role = value; }
        public Account(string username, string name, string pass,string phone,int status,int role)
        {
            _username = username;
            _name = name;
            _pass = pass;
            _phone = phone;
            _status = status;
            _role = role;
        }
        public  bool Addmember()
        {
            string addQuery = "INSERT INTO [dbo].[member]([username],[pass],[name],[phone],[role],[status])" +
                "VALUES(@username,@pass,@name,@phone,@role,@status)";
            SqlParameter[] parameters = new SqlParameter[6];

            parameters[0] = new SqlParameter("@username", this.Username);
            parameters[1] = new SqlParameter("@pass", this.Pass);
            parameters[2] = new SqlParameter("@name", this.Name);
            parameters[3] = new SqlParameter("@phone", this.Phone);
            parameters[4] = new SqlParameter("@role", this.Role);
            parameters[5] = new SqlParameter("@status", this.Status);

            return DataProvider.executeNonquery(addQuery,parameters);
        }
    }
}