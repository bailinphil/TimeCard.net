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

        public const string PUNCH_START_IN = "Start work";
        public const string PUNCH_LUNCH_OUT = "Go to lunch";
        public const string PUNCH_LUNCH_IN = "Return from lunch";
        public const string PUNCH_END_OUT = "End work";

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
            result.Id = (long)reader["id"];
            result.Username = (string)reader["username"];
            result.Password = (string)reader["password"];
            result.Name = (string)reader["name"];
            result.IsAdmin = ((byte)reader["isAdmin"]) > 0;
            result.DepartmentId = reader["departmentId"] == DBNull.Value ? 0 : (long)reader["departmentId"];
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
                if (when < day.StartIn) return NOT_WORKING;
                // if there's a punch out time, it doesn't matter whether lunch occurred.
                if (when >= day.EndOut) return DONE;

                if (when == day.StartIn || when < day.LunchOut) return MORNING;
                if (when == day.LunchOut || when < day.LunchIn) return LUNCH;
                if (when == day.LunchIn || when < day.EndOut) return AFTERNOON;
                return NOT_WORKING;
            }
        }

        public void Punch(SQLiteConnection conn, DateTime when, String activity)
        {
            WorkdayModel day = WorkdayModel.Load(HoursUtil.GetConnection(), Id, when);
            if (day == null)
            {
                day = new WorkdayModel();
                day.Date = when.Date;
                day.User = this;
                if (activity != PUNCH_START_IN)
                {
                    string message = string.Format("Record for new day {0} should begin with starting work, not '{1}'", when.ToShortDateString(), activity);
                    throw new ArgumentException(message);
                }
            }
            switch (activity)
            {
                case PUNCH_START_IN:
                    day.StartIn = when;
                    break;
                case PUNCH_LUNCH_OUT:
                    day.LunchOut = when;
                    break;
                case PUNCH_LUNCH_IN:
                    day.LunchIn = when;
                    break;
                case PUNCH_END_OUT:
                    day.EndOut = when;
                    break;
                default:
                    throw new ArgumentException("don't recognize punch activity: " + activity);
            }
            day.Save(conn);
        }

    }
}