using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FoodShopp.App_Code
{
    public class Order_detail
    {
        private int _order_id;
        private int _food_id;
        private decimal _quan;
        private string _unit;
        private decimal _price;
        private decimal _total;

        public int Order_id { get => _order_id; set => _order_id = value; }
        public int Food_id { get => _food_id; set => _food_id = value; }
        public decimal Quan { get => _quan; set => _quan = value; }
        public string Unit { get => _unit; set => _unit = value; }
        public decimal Price { get => _price; set => _price = value; }
        public decimal Total { get => _total; set => _total = value; }
    }
}