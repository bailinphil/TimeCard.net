using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using System.Data.SQLite;

namespace TimeCard.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            SQLiteConnection conn = new SQLiteConnection(@"Data Source=D:\code\TimeCard\TimeCard\TimeCard\App_Data\time.db;Version=3;");
            conn.Open();
            SQLiteCommand query = new SQLiteCommand("select count(*) as days from workday where userId = 2", conn);
            SQLiteDataReader reader = query.ExecuteReader();
            int days = 0;
            while (reader.Read())
            {
                days = Convert.ToInt32(reader["days"]);
            }
            Console.WriteLine(days);
            reader.Close();
            conn.Close();

            ViewBag.Days = days;
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}