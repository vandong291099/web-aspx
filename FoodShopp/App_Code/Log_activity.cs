using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FoodShopp.App_Code
{
    public class Log_activity
    {
        private int _log_id;
        private string _username;
        private string _desciption;
        private DateTime _time_log;
        private int _type;

        public int Log_id { get => _log_id; set => _log_id = value; }
        public string Username { get => _username; set => _username = value; }
        public string Desciption { get => _desciption; set => _desciption = value; }
        public DateTime Time_log { get => _time_log; set => _time_log = value; }
        public int Type { get => _type; set => _type = value; }
    }
}