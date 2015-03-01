using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System.Data.SQLite;
using System.Security.Principal;
using TimeCard.Models;

namespace TimeCard.Controllers
{
    public class HoursControllerUtil
    {
        private static SQLiteConnection conn = null;

        public static SQLiteConnection getConnection()
        {
            if (conn != null) return conn;
            conn = new SQLiteConnection(@"Data Source=D:\code\TimeCard\TimeCard\TimeCard\App_Data\time.db;Version=3;");
            conn.Open();
            return conn;
        }

        public static int GetCurrentUserId(IPrincipal user)
        {
            if (user == null || !user.Identity.IsAuthenticated) return 0;

            var manager = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(new ApplicationDbContext()));
            var currentUser = manager.FindById(user.Identity.GetUserId());
            return currentUser.SQLiteUserId;
        }

        public static UserModel GetCurrentUser(IPrincipal user)
        {
            if (user == null || !user.Identity.IsAuthenticated) return null;

            int id = GetCurrentUserId(user);
            getConnection();
            return UserModel.Load(conn, GetCurrentUserId(user));
        }
    }
}