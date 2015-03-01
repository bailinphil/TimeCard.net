using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using System.Data.SQLite;
using TimeCard.Models;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

namespace TimeCard.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            UserModel user = HoursControllerUtil.GetCurrentUser(User);

            if (user == null)
            {
                return View();
            }
            {
                ViewBag.User = user;
                return user.IsAdmin ? View("AdminHome") : View("EmployeeHome");
            } 
        }

        public ActionResult About()
        {
            return View();
        }
    }
}