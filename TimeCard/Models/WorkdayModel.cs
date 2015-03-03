using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SQLite;
using System.Linq;
using System.Web;

namespace TimeCard.Models
{
    public class WorkdayModel
    {
        public UserModel User { get; set; }
        public DateTime Day { get; set; }
        public DateTime StartIn { get; set; }
        public DateTime LunchOut { get; set; }
        public DateTime LunchIn { get; set; }
        public DateTime EndOut { get; set; }
        public bool IsPaidTimeOff { get; set; }
        public bool IsHoliday { get; set; }

        private const string LOAD_QUERY = @"select * from workday join user on workday.userid = user.id where userId='@id' and day='@day'";
        private const string DELETE_QUERY = @"delete from workday where userId='@id' and day='@day'";
        private const string INSERT_QUERY = @"insert into workday( userId
                                                                 , day
                                                                 , startIn
                                                                 , lunchOut
                                                                 , lunchIn
                                                                 , endOut
                                                                 , isPaidTimeOff
                                                                 , isHoliday 
                                                                 )
                                                                 values 
                                                                 ( '@id'
                                                                 , '@day'
                                                                 , '@startIn'
                                                                 , '@lunchOut'
                                                                 , '@lunchIn'
                                                                 , '@endOut'
                                                                 , '@isPaidTimeOff'
                                                                 , '@isHoliday'
                                                                 )";

        public WorkdayModel()
        {
            User = null;
            Day = DateTime.MaxValue;
            StartIn = DateTime.MaxValue;
            LunchOut = DateTime.MaxValue;
            LunchIn = DateTime.MaxValue;
            EndOut = DateTime.MaxValue;
            IsPaidTimeOff = false;
            IsHoliday = false;
        }

        public static WorkdayModel Load(SQLiteConnection conn, long userId, DateTime date)
        {
            SQLiteCommand query = null;
            SQLiteDataReader reader = null;
            try
            {
                query = new SQLiteCommand(LOAD_QUERY, conn);
                SetIdentityQueryValues(userId, date, query);
                //PrepareIdentityQuery(userId,date,query);
                //query.Prepare();
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

        public static WorkdayModel LoadFromReader(SQLiteDataReader reader)
        {
            WorkdayModel result = new WorkdayModel();
            UserModel user = UserModel.LoadFromReader(reader);
            result.User = user;
            result.Day = reader["day"] == DBNull.Value ? DateTime.MaxValue : ((DateTime)reader["day"]).Date;
            result.StartIn = reader["startIn"] == DBNull.Value ? DateTime.MaxValue : (DateTime)reader["startIn"];
            result.LunchOut = reader["lunchOut"] == DBNull.Value ? DateTime.MaxValue : (DateTime)reader["lunchOut"];
            result.LunchIn = reader["lunchIn"] == DBNull.Value ? DateTime.MaxValue : (DateTime)reader["lunchIn"];
            result.EndOut = reader["endOut"] == DBNull.Value ? DateTime.MaxValue : (DateTime)reader["endOut"];
            result.IsPaidTimeOff = ((byte)reader["isPaidTimeOff"]) > 0;
            result.IsHoliday = ((byte)reader["isHoliday"]) > 0;
            return result;
        }

        public void Save(SQLiteConnection conn)
        {
            CheckConsistency();
            var delete = new SQLiteCommand(DELETE_QUERY, conn);
            SetIdentityQueryValues(User.Id, Day, delete);
            //delete.Prepare();
            var rows = delete.ExecuteNonQuery();

            var insert = new SQLiteCommand(INSERT_QUERY, conn);
            SetIdentityQueryValues(User.Id, Day, insert);
            SetInsertValues(insert);
            //insert.Prepare();
            insert.ExecuteNonQuery();
        }

        public bool HasDate()
        {
            return Day != null && Day != DateTime.MinValue && Day != DateTime.MaxValue;
        }

        public bool HasStartIn()
        {
            return StartIn != null && StartIn != DateTime.MinValue && StartIn != DateTime.MaxValue;
        }

        public bool HasLunchOut()
        {
            return LunchOut != null && StartIn != DateTime.MinValue && LunchOut != DateTime.MaxValue;
        }

        public bool HasLunchIn()
        {
            return LunchIn != null && StartIn != DateTime.MinValue && LunchIn != DateTime.MaxValue;
        }

        public bool HasEndOut()
        {
            return EndOut != null && StartIn != DateTime.MinValue && EndOut != DateTime.MaxValue;
        }

        /* 
         * the point of this is to ensure that we maintain a consistent state for all workdays, before we 
         * save anything.
         */
        public void CheckConsistency()
        {
            string message = null;
            // check for presence/absence of necessary fields.
            if (User == null)
            {
                message = "Workday not associated with any user.";
                throw new WorkdayStateException(message);
            }
            if (HasEndOut() && !HasStartIn())
            {
                message = string.Format("User {0} ({1}) cannot end work on {2} if it has not begun."
                                       , User.Id
                                       , User.Name
                                       , Day.ToShortDateString());
                throw new WorkdayStateException(message);
            }
            if (HasLunchOut() && !HasStartIn())
            {
                message = string.Format("User {0} ({1}) cannot go to lunch on {2} if work has not begun."
                                       , User.Id
                                       , User.Name
                                       , Day.ToShortDateString());
                throw new WorkdayStateException(message);
            }
            if (HasLunchIn() && (!HasStartIn() || !HasLunchOut()))
            {
                message = string.Format("User {0} ({1}) cannot return from lunch on {2} if work start and lunch start are not both present."
                                       , User.Id
                                       , User.Name
                                       , Day.ToShortDateString());
                throw new WorkdayStateException(message);
            }

            // check ordering of timestamps
            if (HasStartIn())
            {
                if (HasLunchOut() && LunchOut < StartIn)
                {
                    message = string.Format("User {0} ({1}) cannot go to lunch on {2} before work has begun."
                                                           , User.Id
                                                           , User.Name
                                                           , Day.ToShortDateString());
                    throw new WorkdayStateException(message);
                }
                if (HasLunchIn() && LunchIn < StartIn)
                {
                    message = string.Format("User {0} ({1}) cannot return from lunch on {2} before work has begun."
                                                           , User.Id
                                                           , User.Name
                                                           , Day.ToShortDateString());
                    throw new WorkdayStateException(message);
                }
                if (HasEndOut() && EndOut < StartIn)
                {
                    message = string.Format("User {0} ({1}) cannot finish work on {2} before work has begun."
                                                           , User.Id
                                                           , User.Name
                                                           , Day.ToShortDateString());
                    throw new WorkdayStateException(message);
                }
            }
            if (HasLunchOut())
            {
                if (HasLunchIn() && LunchIn < LunchOut)
                {
                    message = string.Format("User {0} ({1}) cannot return from lunch on {2} before leaving for it."
                                                           , User.Id
                                                           , User.Name
                                                           , Day.ToShortDateString());
                    throw new WorkdayStateException(message);
                }
                if (HasEndOut() && EndOut < LunchOut)
                {
                    message = string.Format("User {0} ({1}) cannot finish work on {2} before leaving for lunch."
                                                           , User.Id
                                                           , User.Name
                                                           , Day.ToShortDateString());
                    throw new WorkdayStateException(message);
                }
            }
            if (HasLunchIn())
            {
                if (HasEndOut() && EndOut < LunchIn)
                {
                    message = string.Format("User {0} ({1}) cannot finish work on {2} before returning from lunch."
                                                           , User.Id
                                                           , User.Name
                                                           , Day.ToShortDateString());
                    throw new WorkdayStateException(message);
                }
            }
        }

        private static void PrepareIdentityQuery(long userId, DateTime date, SQLiteCommand query)
        {
            SQLiteParameter idParam = new SQLiteParameter("@id", SqlDbType.Int);
            SQLiteParameter dayParam = new SQLiteParameter("@day", SqlDbType.Date);
            idParam.Value = userId;
            dayParam.Value = date.Date;
            query.Parameters.Add(idParam);
            query.Parameters.Add(dayParam);
        }

        /*
         * using text replacment in query generation is a big no-no because of SQL injection attacks, but
         * I am unable to resolve some bugs with prepared statements, so falling back to this.
         */
        private static void SetIdentityQueryValues(long userId, DateTime when, SQLiteCommand query)
        {
            var text = query.CommandText;
            text = text.Replace("@id", userId.ToString());
            text = text.Replace("@day", when.ToString("yyyy-MM-dd"));
            query.CommandText = text;
        }

        private void PrepareInsert(SQLiteCommand insert)
        {
            SQLiteParameter startInParam = new SQLiteParameter("@startIn", SqlDbType.DateTime);
            SQLiteParameter lunchOutParam = new SQLiteParameter("@lunchOut", SqlDbType.DateTime);
            SQLiteParameter lunchInParam = new SQLiteParameter("@lunchIn", SqlDbType.DateTime);
            SQLiteParameter endOutParam = new SQLiteParameter("@endOut", SqlDbType.DateTime);
            SQLiteParameter isPaidTimeOffParam = new SQLiteParameter("@isPaidTimeOff", SqlDbType.TinyInt);
            SQLiteParameter isHolidayParam = new SQLiteParameter("@isHoliday", SqlDbType.TinyInt);
            startInParam.Value = DBNull.Value;
            lunchOutParam.Value = DBNull.Value;
            lunchInParam.Value = DBNull.Value;
            endOutParam.Value = DBNull.Value;
            if (HasStartIn()) startInParam.Value = StartIn;
            if (HasLunchOut()) lunchOutParam.Value = LunchOut;
            if (HasLunchIn()) lunchInParam.Value = LunchIn;
            if (HasEndOut()) endOutParam.Value = EndOut;
            isPaidTimeOffParam.Value = IsPaidTimeOff ? 1 : 0;
            isHolidayParam.Value = IsHoliday ? 1 : 0;
            insert.Parameters.Add(startInParam);
            insert.Parameters.Add(lunchOutParam);
            insert.Parameters.Add(lunchInParam);
            insert.Parameters.Add(endOutParam);
            insert.Parameters.Add(isPaidTimeOffParam);
            insert.Parameters.Add(isHolidayParam);
        }

        private void SetInsertValues(SQLiteCommand insert)
        {
            var text = insert.CommandText;
            text = text.Replace("@startIn", HasStartIn() ? StartIn.ToString("yyyy-MM-ddTH:mm:ss") : "NULL");
            text = text.Replace("@lunchOut", HasLunchOut() ? LunchOut.ToString("yyyy-MM-ddTH:mm:ss") : "NULL");
            text = text.Replace("@lunchIn", HasLunchIn() ? LunchIn.ToString("yyyy-MM-ddTH:mm:ss") : "NULL");
            text = text.Replace("@endOut", HasEndOut() ? EndOut.ToString("yyyy-MM-ddTH:mm:ss") : "NULL");
            text = text.Replace("@isPaidTimeOff", IsPaidTimeOff ? "1" : "0");
            text = text.Replace("@isHoliday", IsHoliday ? "1" : "0");
            text = text.Replace("'NULL'", "NULL"); // drop single quotes around NULL values
            insert.CommandText = text;
        }
    }
}

public class WorkdayStateException : Exception
{
    public WorkdayStateException(string message)
        : base(message)
    {
    }
}