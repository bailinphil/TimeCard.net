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
            SQLiteConnection conn = new SQLiteConnection(@"Data Source=D:\code\TimeCard\TimeCard\TimeCard\App_Data\time.db;Version=3;");
            conn.Open();
            WorkdayModel day = WorkdayModel.Load(conn, 2, new DateTime( 2014,11,3 ));
            conn.Close();

            if (day != null)
            {
                ViewBag.Workday = day;
                ViewBag.User = day.User;
            }
            return View("EmployeeReport");
        }
    }
}