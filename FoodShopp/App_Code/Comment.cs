using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FoodShopp.App_Code
{
    public class Comment
    {
        private int _comment_id;
        private string _cus_email;
        private string _cus_name;
        private string _des;
        private int _status;
        private DateTime _created;
        private int _post_id;
        private int _rep_id;

        public int Comment_id { get => _comment_id; set => _comment_id = value; }
        public string Cus_email { get => _cus_email; set => _cus_email = value; }
        public string Cus_name { get => _cus_name; set => _cus_name = value; }
        public string Des { get => _des; set => _des = value; }
        public int Status { get => _status; set => _status = value; }
        public DateTime Created { get => _created; set => _created = value; }
        public int Post_id { get => _post_id; set => _post_id = value; }
        public int Rep_id { get => _rep_id; set => _rep_id = value; }
    }
}