using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Principal;
using System.Web;
using TimeCard.Models;

namespace TimeCard.Controllers
{
    public class HoursControllerUtil
    {
        public static int GetCurrentUserId(IPrincipal user)
        {
            if (user == null) return 0;

            var manager = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(new ApplicationDbContext()));
            var currentUser = manager.FindById(user.Identity.GetUserId());
            return currentUser.SQLiteUserId;
        }
    }
}