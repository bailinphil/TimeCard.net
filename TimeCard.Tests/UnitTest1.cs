using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using TimeCard.Models;
using TimeCard.Controllers;
using System.Data.SQLite;

namespace TimeCard.Tests
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void WhatIsUserDoingWhen()
        {
            SQLiteConnection conn = HoursUtil.GetConnection();
            UserModel user = UserModel.Load(conn, 2);
            Assert.Equals(user.GetActivity(), UserModel.NOT_WORKING);
        }
    }
}
