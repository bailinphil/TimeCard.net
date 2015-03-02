using System;
using System.Collections.Generic;
using System.Data.SQLite;
using System.Linq;
using System.Web;
using TimeCard.Controllers;

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

        public const int NOT_WORKING = 0;
        public const int MORNING = 1;
        public const int LUNCH = 2;
        public const int AFTERNOON = 3;
        public const int DONE = 4;
        public const int PAID_TIME_OFF = 5;
        public const int HOLIDAY = 6;
        public const int WEEKEND = 7;

        public static string[] STATE_DESCRIPTION = {"not working"
                                                  , "punched in, before lunch"
                                                  , "at lunch"
                                                  , "punched in, after lunch"
                                                  , "finished working"
                                                  , "taking the day off"
                                                  , "on holiday"
                                                  , "enjoying the weekend"
                                                  };

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

        public int GetActivity()
        {
            return GetActivity(DateTime.Now);
        }

        public int GetActivity(DateTime when)
        {
            WorkdayModel day = WorkdayModel.Load(HoursUtil.GetConnection(), Id, when);
            if (day == null)
            {
                if (when.DayOfWeek == DayOfWeek.Sunday || when.DayOfWeek == DayOfWeek.Saturday) return WEEKEND;
                return NOT_WORKING;
            }
            else
            {
                if (day.IsHoliday) return HOLIDAY;
                if (day.IsPaidTimeOff) return PAID_TIME_OFF;

                // the load function uses DateTime.MaxValue if the entry hasn't been created yet.
                // that is, in the database, if there's a value for StartIn, but the others are all
                // null, they will be represented as DateTime.MaxValue.
                if (when < day.StartIn ) return NOT_WORKING;
                if (when > day.EndOut) return DONE; // if there's a punch out time, we don't need to check on lunch.
                if (when < day.LunchOut ) return MORNING;
                if (when < day.LunchIn ) return LUNCH;
                if (when < day.EndOut ) return AFTERNOON;
                return NOT_WORKING;
            }
        }
    }
}