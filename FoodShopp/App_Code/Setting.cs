using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FoodShopp.App_Code
{
    public class Setting
    {
        private int _id_setting;
        private string _name;
        private string _des;
        private string _value;
        private string _username;
        private DateTime _modified;

        public int Id_setting { get => _id_setting; set => _id_setting = value; }
        public string Name { get => _name; set => _name = value; }
        public string Des { get => _des; set => _des = value; }
        public string Value { get => _value; set => _value = value; }
        public string Username { get => _username; set => _username = value; }
        public DateTime Modified { get => _modified; set => _modified = value; }
    }
}