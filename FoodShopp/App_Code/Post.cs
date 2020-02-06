using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FoodShopp.App_Code
{
    public class Post
    {
        private int _post_id;
        private string _title;
        private string _short_des;
        private string _des;
        private string _img;
        private int _status;
        private string _username;
        private DateTime _modified;
        private DateTime _created;

        public int Post_id { get => _post_id; set => _post_id = value; }
        public string Title { get => _title; set => _title = value; }
        public string Short_des { get => _short_des; set => _short_des = value; }
        public string Des { get => _des; set => _des = value; }
        public string Img { get => _img; set => _img = value; }
        public int Status { get => _status; set => _status = value; }
        public string Username { get => _username; set => _username = value; }
        public DateTime Modified { get => _modified; set => _modified = value; }
        public DateTime Created { get => _created; set => _created = value; }
    }
}