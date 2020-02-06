using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace FoodShopp.App_Code
{
    public class food
    {
        private int _id;
        private string _name;
        private string _desciption;
        private int _price;
        private int _price_promo;
        private string _thumb;
        private string _img;
        private string _unit;
        private int _percent_promo;
        private int _rating;
        private int _sold;
        private int _point;
        private int _type;
        private int _status;
        private string _username;
        private DateTime _modified;
      

        

       

        
        
        public food(int id, string name, string des, int price, int price_promo, string thumb, string img, string unit, int percent_promo, int rating, int sold, int point, int type, int status, string username, DateTime modified)
        {
            this._id = id;
            this._name = name;
            this._desciption = des;
            this._price = price;
            this._price_promo = price_promo;
            this._thumb = thumb;
            this._img = img;
            this._unit = unit;
            this._percent_promo = percent_promo;
            this._rating = rating;
            this._point = point;
            this._sold = sold;
            this._type = type;
            this._status = status;
            this._username = username;
            this._modified = modified;
        }
        public food(string name, string des, int price, int price_promo, string thumb, string img, string unit, int percent_promo, int rating, int sold, int point, int type, int status, string username, DateTime modified)
        {
            this._name = name;
            this._desciption = des;
            this._price = price;
            this._price_promo = price_promo;
            this._thumb = thumb;
            this._img = img;
            this._unit = unit;
            this._percent_promo = percent_promo;
            this._rating = rating;
            this._point = point;
            this._sold = sold;
            this._type = type;
            this._status = status;
            this._username = username;
            this._modified = modified;
            
        }

        public int Id { get => _id; set => _id = value; }
        public string Name { get => _name; set => _name = value; }
        public string Desciption { get => _desciption; set => _desciption = value; }
        public int Price { get => _price; set => _price = value; }
        public int Price_promo { get => _price_promo; set => _price_promo = value; }
        public string Thumb { get => _thumb; set => _thumb = value; }
        public string Img { get => _img; set => _img = value; }
        public string Unit { get => _unit; set => _unit = value; }
        public int Percent_promo { get => _percent_promo; set => _percent_promo = value; }
        public int Rating { get => _rating; set => _rating = value; }
        public int Sold { get => _sold; set => _sold = value; }
        public int Point { get => _point; set => _point = value; }
        public int Type { get => _type; set => _type = value; }
        public int Status { get => _status; set => _status = value; }
        public string Username { get => _username; set => _username = value; }
        public DateTime Modified { get => _modified; set => _modified = value; }

        public bool addFood()
        {
            string sQuery = "INSERT INTO [Food_DB].[dbo].[food]([name]           ,[description]           ,[price]           ,[price_promo]           ,[thumb]           ,[img]           ,[unit]           ,[percent_promo]           ,[rating]           ,[sold]           ,[point]           ,[type]           ,[status]           ,[username]           ,[modified]) VALUES (@name,@description,@price,@price_promo,@thumb,@img,@unit,@percent_promo,@rating,@sold,@point,@type,@status,@username,@modified)";


            SqlParameter[] parameters =
               {

            new SqlParameter("@name", this._name),
                new SqlParameter("@description",this._desciption),
                new SqlParameter("@price", this._price),
                new SqlParameter("@price_promo",this._price_promo),
                new SqlParameter("@thumb",this._thumb),
                new SqlParameter("@img",  this._img),
                new SqlParameter("@unit",  this._unit),
                new SqlParameter("@percent_promo",this._percent_promo),
                new SqlParameter("@rating",this._rating),
                new SqlParameter("@sold",  this._sold),
                new SqlParameter("@point", this._point),
                new SqlParameter("@type",this._type),
                new SqlParameter("@status", this._status),
                new SqlParameter("@username",this._username),
                new SqlParameter("@modified", this._modified) ,
               
               };
            return DataProvider.executeNonquery(sQuery, parameters);
        }
    }
}