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

        private const string LOAD_QUERY = @"select * from user where id = @id";

        public static UserModel Load(SQLiteConnection conn, int userId)
        {
            SQLiteCommand query = null;
            SQLiteDataReader reader = null;
            try
            {
                string queryString = LOAD_QUERY.Replace("@id", userId.ToString());
                query = new SQLiteCommand(queryString, conn);
                reader = query.ExecuteReader();

                if (reader.Read())
                {
                    return LoadFromReader(reader);
                }
                else
                {
                    return null;
                }
            }
            finally
            {
                reader.Close();
            }
        }

        public static UserModel LoadFromReader(SQLiteDataReader reader)
        {
            UserModel result = new UserModel();
            result.Id = (long) reader["id"];
            result.Username = (string) reader["username"];
            result.Password = (string) reader["password"];
            result.Name = (string) reader["name"];
            result.IsAdmin = ((byte) reader["isAdmin"]) > 0;
            result.DepartmentId = reader["departmentId"] == DBNull.Value ? 0 : (long) reader["departmentId"];
            return result;
        }
    }
}