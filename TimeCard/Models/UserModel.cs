using System;
using System.Collections.Generic;
using System.Data.SQLite;
using System.Linq;
using System.Web;

namespace TimeCard.Models
{
    public class UserModel
    {
        public long Id { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }
        public string Name { get; set; }
        public bool IsAdmin { get; set; }
        public long DepartmentId { get; set; }

        public static UserModel LoadFromReader(SQLiteDataReader reader)
        {
            UserModel result = new UserModel();
            result.Id = (long) reader["id"];
            result.Username = (string) reader["username"];
            result.Password = (string) reader["password"];
            result.Name = (string) reader["name"];
            result.IsAdmin = ((byte) reader["isAdmin"]) > 0;
            result.DepartmentId = (long) reader["departmentId"];
            return result;
        }
    }
}