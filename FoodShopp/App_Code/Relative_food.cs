using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FoodShopp.App_Code
{
    public class Relative_food
    {
        private int _food1_id;
        private int _food2_id;
        private string _des;

        public int Food1_id { get => _food1_id; set => _food1_id = value; }
        public int Food2_id { get => _food2_id; set => _food2_id = value; }
        public string Des { get => _des; set => _des = value; }
    }
}