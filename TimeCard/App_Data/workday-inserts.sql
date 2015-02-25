
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-11-03", '2014-11-03T07:59:00', '2014-11-03T12:03:00', '2014-11-03T12:57:00', '2014-11-03T17:03:00', 0, (select count(1) from Holiday where day='2014-11-03') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-11-04", '2014-11-04T07:57:00', '2014-11-04T12:02:00', '2014-11-04T12:58:00', '2014-11-04T17:01:00', 0, (select count(1) from Holiday where day='2014-11-04') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-11-05", '2014-11-05T07:58:00', '2014-11-05T12:03:00', '2014-11-05T12:57:00', '2014-11-05T17:02:00', 0, (select count(1) from Holiday where day='2014-11-05') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-11-06", '2014-11-06T08:00:00', '2014-11-06T12:03:00', '2014-11-06T12:57:00', '2014-11-06T17:02:00', 0, (select count(1) from Holiday where day='2014-11-06') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-11-07", '2014-11-07T07:59:00', '2014-11-07T12:03:00', '2014-11-07T12:56:00', '2014-11-07T17:03:00', 0, (select count(1) from Holiday where day='2014-11-07') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-11-10", '2014-11-10T07:59:00', '2014-11-10T12:01:00', '2014-11-10T12:59:00', '2014-11-10T17:03:00', 0, (select count(1) from Holiday where day='2014-11-10') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-11-11", '2014-11-11T07:57:00', '2014-11-11T12:04:00', '2014-11-11T12:58:00', '2014-11-11T17:03:00', 0, (select count(1) from Holiday where day='2014-11-11') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-11-12", '2014-11-12T07:57:00', '2014-11-12T12:00:00', '2014-11-12T12:58:00', '2014-11-12T17:02:00', 0, (select count(1) from Holiday where day='2014-11-12') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-11-13", '2014-11-13T07:59:00', '2014-11-13T12:04:00', '2014-11-13T12:59:00', '2014-11-13T17:01:00', 0, (select count(1) from Holiday where day='2014-11-13') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-11-14", '2014-11-14T07:59:00', '2014-11-14T12:02:00', '2014-11-14T12:57:00', '2014-11-14T17:03:00', 0, (select count(1) from Holiday where day='2014-11-14') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-11-17", '2014-11-17T07:57:00', '2014-11-17T12:02:00', '2014-11-17T12:59:00', '2014-11-17T17:03:00', 0, (select count(1) from Holiday where day='2014-11-17') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-11-18", '2014-11-18T07:59:00', '2014-11-18T12:02:00', '2014-11-18T12:57:00', '2014-11-18T17:02:00', 0, (select count(1) from Holiday where day='2014-11-18') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-11-19", '2014-11-19T08:00:00', '2014-11-19T12:01:00', '2014-11-19T12:57:00', '2014-11-19T17:03:00', 0, (select count(1) from Holiday where day='2014-11-19') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-11-20", '2014-11-20T07:57:00', '2014-11-20T12:01:00', '2014-11-20T12:58:00', '2014-11-20T17:01:00', 0, (select count(1) from Holiday where day='2014-11-20') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-11-21", NULL, NULL, NULL, NULL, 1, (select count(1) from Holiday where day='2014-11-21') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-11-24", '2014-11-24T07:58:00', '2014-11-24T12:01:00', '2014-11-24T12:57:00', '2014-11-24T17:01:00', 0, (select count(1) from Holiday where day='2014-11-24') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-11-25", '2014-11-25T07:58:00', '2014-11-25T12:00:00', '2014-11-25T13:00:00', '2014-11-25T17:03:00', 0, (select count(1) from Holiday where day='2014-11-25') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-11-26", '2014-11-26T07:59:00', '2014-11-26T12:02:00', '2014-11-26T12:58:00', '2014-11-26T17:02:00', 0, (select count(1) from Holiday where day='2014-11-26') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-11-27", '2014-11-27T07:58:00', '2014-11-27T12:00:00', '2014-11-27T12:58:00', '2014-11-27T17:02:00', 0, (select count(1) from Holiday where day='2014-11-27') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-11-28", '2014-11-28T07:57:00', '2014-11-28T12:03:00', '2014-11-28T13:00:00', '2014-11-28T17:02:00', 0, (select count(1) from Holiday where day='2014-11-28') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-11-03", NULL, NULL, NULL, NULL, 1, (select count(1) from Holiday where day='2014-11-03') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-11-04", '2014-11-04T08:04:00', '2014-11-04T11:57:00', '2014-11-04T13:04:00', '2014-11-04T17:00:00', 0, (select count(1) from Holiday where day='2014-11-04') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-11-05", '2014-11-05T08:06:00', '2014-11-05T11:55:00', '2014-11-05T13:02:00', '2014-11-05T16:55:00', 0, (select count(1) from Holiday where day='2014-11-05') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-11-06", '2014-11-06T08:03:00', '2014-11-06T11:56:00', '2014-11-06T13:08:00', '2014-11-06T16:55:00', 0, (select count(1) from Holiday where day='2014-11-06') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-11-07", '2014-11-07T08:07:00', '2014-11-07T11:55:00', '2014-11-07T13:06:00', '2014-11-07T16:59:00', 0, (select count(1) from Holiday where day='2014-11-07') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-11-10", '2014-11-10T08:06:00', '2014-11-10T11:58:00', '2014-11-10T13:05:00', '2014-11-10T16:58:00', 0, (select count(1) from Holiday where day='2014-11-10') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-11-11", NULL, NULL, NULL, NULL, 1, (select count(1) from Holiday where day='2014-11-11') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-11-12", '2014-11-12T08:03:00', '2014-11-12T11:56:00', '2014-11-12T13:03:00', '2014-11-12T16:57:00', 0, (select count(1) from Holiday where day='2014-11-12') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-11-13", '2014-11-13T08:06:00', '2014-11-13T11:53:00', '2014-11-13T13:04:00', '2014-11-13T16:58:00', 0, (select count(1) from Holiday where day='2014-11-13') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-11-14", '2014-11-14T08:05:00', '2014-11-14T11:56:00', '2014-11-14T13:04:00', '2014-11-14T16:55:00', 0, (select count(1) from Holiday where day='2014-11-14') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-11-17", NULL, NULL, NULL, NULL, 1, (select count(1) from Holiday where day='2014-11-17') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-11-18", NULL, NULL, NULL, NULL, 1, (select count(1) from Holiday where day='2014-11-18') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-11-19", NULL, NULL, NULL, NULL, 1, (select count(1) from Holiday where day='2014-11-19') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-11-20", '2014-11-20T08:06:00', '2014-11-20T11:52:00', '2014-11-20T13:04:00', '2014-11-20T17:00:00', 0, (select count(1) from Holiday where day='2014-11-20') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-11-21", '2014-11-21T08:06:00', '2014-11-21T11:57:00', '2014-11-21T13:05:00', '2014-11-21T16:55:00', 0, (select count(1) from Holiday where day='2014-11-21') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-11-24", NULL, NULL, NULL, NULL, 1, (select count(1) from Holiday where day='2014-11-24') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-11-25", '2014-11-25T08:04:00', '2014-11-25T11:57:00', '2014-11-25T13:07:00', '2014-11-25T16:54:00', 0, (select count(1) from Holiday where day='2014-11-25') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-11-26", '2014-11-26T08:01:00', '2014-11-26T11:55:00', '2014-11-26T13:06:00', '2014-11-26T16:56:00', 0, (select count(1) from Holiday where day='2014-11-26') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-11-27", '2014-11-27T08:01:00', '2014-11-27T11:59:00', '2014-11-27T13:03:00', '2014-11-27T16:55:00', 0, (select count(1) from Holiday where day='2014-11-27') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-11-28", '2014-11-28T08:07:00', '2014-11-28T11:54:00', '2014-11-28T13:01:00', '2014-11-28T16:55:00', 0, (select count(1) from Holiday where day='2014-11-28') );
