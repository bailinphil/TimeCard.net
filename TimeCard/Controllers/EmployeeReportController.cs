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
            int userId = HoursControllerUtil.GetCurrentUserId(User);
            if (userId == 0) return Redirect("/");

            SQLiteConnection conn = HoursControllerUtil.GetConnection();
            WorkdayModel day = WorkdayModel.Load(conn, userId, new DateTime( 2014,11,3 ));
            conn.Close();

            if (day == null) return Redirect("/");

            ViewBag.Workday = day;
            ViewBag.User = day.User;
            return View();
        }
    }
}