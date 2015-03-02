using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System.Data;
using System.Data.SQLite;
using System.Security.Principal;
using TimeCard.Models;

namespace TimeCard
{
    public class HoursUtil
    {
        private static SQLiteConnection conn = null;
        public static SQLiteConnection GetConnection()
        {
            if (conn == null)
            {
                conn = new SQLiteConnection(@"Data Source=|DataDirectory|time.db;Version=3;");
                conn.Open();
                return conn;
            }
            else
            {
                return (conn.State == ConnectionState.Open) ? conn : conn.OpenAndReturn();
            }
            
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
            GetConnection();
            return UserModel.Load(conn, GetCurrentUserId(user));
        }
    }
}