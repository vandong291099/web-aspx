using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FoodShopp.App_Code
{
    public class Customer
    {
        private string _username;
        private string _password;
        private string _name;
        private string _phone;
        private string _email;
        private string _address;
        private int _num_order;
        private int _num_successful_order;
        private decimal _sum;
        private int _status;
        private DateTime _created;

        public string Username { get => _username; set => _username = value; }
        public string Password { get => _password; set => _password = value; }
        public string Name { get => _name; set => _name = value; }
        public string Phone { get => _phone; set => _phone = value; }
        public string Email { get => _email; set => _email = value; }
        public string Address { get => _address; set => _address = value; }
        public int Num_order { get => _num_order; set => _num_order = value; }
        public int Num_successful_order { get => _num_successful_order; set => _num_successful_order = value; }
        public decimal Sum { get => _sum; set => _sum = value; }
        public int Status { get => _status; set => _status = value; }
        public DateTime Created { get => _created; set => _created = value; }
    }
}