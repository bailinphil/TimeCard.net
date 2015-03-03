using System;
using System.Collections.Generic;
using System.Data.SQLite;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TimeCard.Models;

namespace TimeCard.Controllers
{
    public class EmployeeReportController : Controller
    {
        // GET: EmployeeReport
        public ActionResult Index()
        {
            int userId = HoursUtil.GetCurrentUserId(User);
            if (userId == 0) return Redirect("/");


            SQLiteConnection conn = HoursUtil.GetConnection();
            UserModel user = UserModel.Load(conn, userId);
            var days = WorkdayModel.LoadDaysInRange(conn, userId, DateTime.Now.AddDays(-7), DateTime.Now);
            conn.Close();

            ViewBag.User = user;
            ViewBag.Days = days;
            return View();
        }


    }
}