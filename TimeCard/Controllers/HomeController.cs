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
            var pageTime = DateTime.Now;
            if (Request.Form.HasKeys() && Request.Form["forceDate"] != null && Request.Form["forceTime"] != null)
            {
                char[] dateDelims = {'/'};
                string[] dateParts = Request.Form["forceDate"].Split( dateDelims );
                int month = Convert.ToInt32(dateParts[0]);
                int day = Convert.ToInt32(dateParts[1]);
                int year = Convert.ToInt32(dateParts[2]);

                char[] timeDelims = {':', ' '};
                string[] timeParts = Request.Form["forceTime"].Split(timeDelims);
                int hours = Convert.ToInt32(timeParts[0]);
                int minutes = Convert.ToInt32(timeParts[1]);
                if (timeParts[2] == "PM" && hours < 12) hours += 12;
                int seconds = 0;

                pageTime = new DateTime(year, month, day, hours, minutes, seconds);
            }
            var activityCode = user.GetActivity( pageTime );
            Dictionary<string,string> buttonEnables = new Dictionary<string, string>();
            buttonEnables["StartIn"] = activityCode < 1 ? "" : "disabled";
            buttonEnables["LunchOut"] = activityCode < 2 ? "" : "disabled";
            buttonEnables["LunchIn"] = activityCode < 3 ? "" : "disabled";
            buttonEnables["EndOut"] = activityCode < 4 ? "" : "disabled";

            ViewBag.PageTime = pageTime;
            ViewBag.Activity = UserModel.STATE_DESCRIPTION[activityCode];
            ViewBag.ButtonEnables = buttonEnables;
            return View("EmployeeHome");
        }
    }
}