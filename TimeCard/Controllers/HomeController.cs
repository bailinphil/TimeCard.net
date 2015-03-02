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
            UserModel user = HoursUtil.GetCurrentUser(User);

            if (user == null)
            {
                return View();
            }
            {
                ViewBag.User = user;
                return user.IsAdmin ? AdminHome() : EmployeeHome(user);
            } 
        }

        public ActionResult About()
        {
            return View();
        }

        private ActionResult AdminHome()
        {
            return View("AdminHome");
        }

        private ActionResult EmployeeHome(UserModel user)
        {
            var activityCode = user.GetActivity( new DateTime( 2014,11,3,12,30,00) );
            Dictionary<string,string> buttonEnables = new Dictionary<string, string>();
            buttonEnables["StartIn"] = activityCode < 1 ? "" : "disabled";
            buttonEnables["LunchOut"] = activityCode < 2 ? "" : "disabled";
            buttonEnables["LunchIn"] = activityCode < 3 ? "" : "disabled";
            buttonEnables["EndOut"] = activityCode < 4 ? "" : "disabled";

            ViewBag.Activity = UserModel.STATE_DESCRIPTION[activityCode];
            ViewBag.ButtonEnables = buttonEnables;
            return View("EmployeeHome");
        }
    }
}