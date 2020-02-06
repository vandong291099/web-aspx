using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FoodShopp.App_Code
{
    public class Slider
    {
        private int _slide_id;
        private int _id_object;
        private string _img;
        private string _caption;
        private int _type;
        private int _rank;
        private int _status;
        private string _username;
        private DateTime _modified;

        public int Slide_id { get => _slide_id; set => _slide_id = value; }
        public int Id_object { get => _id_object; set => _id_object = value; }
        public string Img { get => _img; set => _img = value; }
        public string Caption { get => _caption; set => _caption = value; }
        public int Type { get => _type; set => _type = value; }
        public int Rank { get => _rank; set => _rank = value; }
        public int Status { get => _status; set => _status = value; }
        public string Username { get => _username; set => _username = value; }
        public DateTime Modified { get => _modified; set => _modified = value; }
    }
}