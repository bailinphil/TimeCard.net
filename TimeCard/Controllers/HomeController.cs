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
            ViewBag.Days = "Welcome";
            return View();
        }

        public ActionResult About()
        {
            return View();
        }
    }
}