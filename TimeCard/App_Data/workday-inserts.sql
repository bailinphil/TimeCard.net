
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-10-01", '2014-10-01T07:58:00', '2014-10-01T12:02:00', '2014-10-01T12:58:00', '2014-10-01T17:00:00', 0, (select count(1) from Holiday where day='2014-10-01') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-10-02", '2014-10-02T07:59:00', '2014-10-02T12:02:00', '2014-10-02T12:56:00', '2014-10-02T17:02:00', 0, (select count(1) from Holiday where day='2014-10-02') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-10-03", '2014-10-03T07:59:00', '2014-10-03T12:00:00', '2014-10-03T12:59:00', '2014-10-03T17:02:00', 0, (select count(1) from Holiday where day='2014-10-03') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-10-06", '2014-10-06T07:58:00', '2014-10-06T12:02:00', '2014-10-06T12:58:00', '2014-10-06T17:04:00', 0, (select count(1) from Holiday where day='2014-10-06') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-10-07", NULL, NULL, NULL, NULL, 1, (select count(1) from Holiday where day='2014-10-07') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-10-08", '2014-10-08T07:59:00', '2014-10-08T12:00:00', '2014-10-08T12:59:00', '2014-10-08T17:00:00', 0, (select count(1) from Holiday where day='2014-10-08') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-10-09", '2014-10-09T07:59:00', '2014-10-09T12:01:00', '2014-10-09T12:58:00', '2014-10-09T17:02:00', 0, (select count(1) from Holiday where day='2014-10-09') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-10-10", '2014-10-10T07:59:00', '2014-10-10T12:02:00', '2014-10-10T12:59:00', '2014-10-10T17:02:00', 0, (select count(1) from Holiday where day='2014-10-10') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-10-13", '2014-10-13T07:57:00', '2014-10-13T12:03:00', '2014-10-13T12:59:00', '2014-10-13T17:02:00', 0, (select count(1) from Holiday where day='2014-10-13') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-10-14", '2014-10-14T07:58:00', '2014-10-14T12:02:00', '2014-10-14T12:57:00', '2014-10-14T17:02:00', 0, (select count(1) from Holiday where day='2014-10-14') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-10-15", '2014-10-15T07:57:00', '2014-10-15T12:02:00', '2014-10-15T12:58:00', '2014-10-15T17:02:00', 0, (select count(1) from Holiday where day='2014-10-15') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-10-16", '2014-10-16T07:58:00', '2014-10-16T12:01:00', '2014-10-16T12:57:00', '2014-10-16T17:03:00', 0, (select count(1) from Holiday where day='2014-10-16') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-10-17", '2014-10-17T07:56:00', '2014-10-17T12:02:00', '2014-10-17T13:00:00', '2014-10-17T17:02:00', 0, (select count(1) from Holiday where day='2014-10-17') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-10-20", '2014-10-20T07:59:00', '2014-10-20T12:03:00', '2014-10-20T12:59:00', '2014-10-20T17:03:00', 0, (select count(1) from Holiday where day='2014-10-20') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-10-21", '2014-10-21T07:59:00', '2014-10-21T12:04:00', '2014-10-21T12:59:00', '2014-10-21T17:03:00', 0, (select count(1) from Holiday where day='2014-10-21') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-10-22", '2014-10-22T07:57:00', '2014-10-22T12:03:00', '2014-10-22T12:57:00', '2014-10-22T17:02:00', 0, (select count(1) from Holiday where day='2014-10-22') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-10-23", '2014-10-23T07:57:00', '2014-10-23T12:02:00', '2014-10-23T12:59:00', '2014-10-23T17:01:00', 0, (select count(1) from Holiday where day='2014-10-23') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-10-24", '2014-10-24T07:58:00', '2014-10-24T12:01:00', '2014-10-24T12:58:00', '2014-10-24T17:03:00', 0, (select count(1) from Holiday where day='2014-10-24') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-10-27", '2014-10-27T07:57:00', '2014-10-27T12:01:00', '2014-10-27T13:00:00', '2014-10-27T17:01:00', 0, (select count(1) from Holiday where day='2014-10-27') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-10-28", NULL, NULL, NULL, NULL, 1, (select count(1) from Holiday where day='2014-10-28') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-10-29", '2014-10-29T07:58:00', '2014-10-29T12:01:00', '2014-10-29T12:57:00', '2014-10-29T17:04:00', 0, (select count(1) from Holiday where day='2014-10-29') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-10-30", '2014-10-30T07:58:00', '2014-10-30T12:01:00', '2014-10-30T12:58:00', '2014-10-30T17:03:00', 0, (select count(1) from Holiday where day='2014-10-30') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-10-31", '2014-10-31T07:59:00', '2014-10-31T12:02:00', '2014-10-31T12:58:00', '2014-10-31T17:02:00', 0, (select count(1) from Holiday where day='2014-10-31') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-11-03", '2014-11-03T07:56:00', '2014-11-03T12:01:00', '2014-11-03T12:58:00', '2014-11-03T17:01:00', 0, (select count(1) from Holiday where day='2014-11-03') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-11-04", '2014-11-04T07:59:00', '2014-11-04T12:02:00', '2014-11-04T12:58:00', '2014-11-04T17:01:00', 0, (select count(1) from Holiday where day='2014-11-04') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-11-05", '2014-11-05T07:56:00', '2014-11-05T12:02:00', '2014-11-05T12:56:00', '2014-11-05T17:03:00', 0, (select count(1) from Holiday where day='2014-11-05') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-11-06", '2014-11-06T07:57:00', '2014-11-06T12:02:00', '2014-11-06T12:58:00', '2014-11-06T17:02:00', 0, (select count(1) from Holiday where day='2014-11-06') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-11-07", '2014-11-07T07:56:00', '2014-11-07T12:01:00', '2014-11-07T12:59:00', '2014-11-07T17:02:00', 0, (select count(1) from Holiday where day='2014-11-07') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-11-10", '2014-11-10T07:58:00', '2014-11-10T12:01:00', '2014-11-10T12:58:00', '2014-11-10T17:04:00', 0, (select count(1) from Holiday where day='2014-11-10') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-11-11", '2014-11-11T07:58:00', '2014-11-11T12:03:00', '2014-11-11T12:58:00', '2014-11-11T17:02:00', 0, (select count(1) from Holiday where day='2014-11-11') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-11-12", NULL, NULL, NULL, NULL, 1, (select count(1) from Holiday where day='2014-11-12') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-11-13", '2014-11-13T08:00:00', '2014-11-13T12:02:00', '2014-11-13T12:56:00', '2014-11-13T17:00:00', 0, (select count(1) from Holiday where day='2014-11-13') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-11-14", '2014-11-14T07:59:00', '2014-11-14T12:02:00', '2014-11-14T12:58:00', '2014-11-14T17:03:00', 0, (select count(1) from Holiday where day='2014-11-14') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-11-17", '2014-11-17T07:57:00', '2014-11-17T12:02:00', '2014-11-17T12:59:00', '2014-11-17T17:02:00', 0, (select count(1) from Holiday where day='2014-11-17') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-11-18", '2014-11-18T07:59:00', '2014-11-18T12:03:00', '2014-11-18T12:57:00', '2014-11-18T17:01:00', 0, (select count(1) from Holiday where day='2014-11-18') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-11-19", '2014-11-19T07:58:00', '2014-11-19T12:02:00', '2014-11-19T12:57:00', '2014-11-19T17:03:00', 0, (select count(1) from Holiday where day='2014-11-19') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-11-20", '2014-11-20T07:58:00', '2014-11-20T12:02:00', '2014-11-20T12:57:00', '2014-11-20T17:04:00', 0, (select count(1) from Holiday where day='2014-11-20') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-11-21", '2014-11-21T07:59:00', '2014-11-21T12:02:00', '2014-11-21T12:58:00', '2014-11-21T17:02:00', 0, (select count(1) from Holiday where day='2014-11-21') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-11-24", '2014-11-24T07:58:00', '2014-11-24T12:01:00', '2014-11-24T12:57:00', '2014-11-24T17:03:00', 0, (select count(1) from Holiday where day='2014-11-24') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-11-25", NULL, NULL, NULL, NULL, 1, (select count(1) from Holiday where day='2014-11-25') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-11-26", '2014-11-26T07:57:00', '2014-11-26T12:00:00', '2014-11-26T12:58:00', '2014-11-26T17:02:00', 0, (select count(1) from Holiday where day='2014-11-26') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-11-27", '2014-11-27T07:58:00', '2014-11-27T12:00:00', '2014-11-27T12:58:00', '2014-11-27T17:01:00', 0, (select count(1) from Holiday where day='2014-11-27') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-11-28", '2014-11-28T08:00:00', '2014-11-28T12:02:00', '2014-11-28T12:58:00', '2014-11-28T17:01:00', 0, (select count(1) from Holiday where day='2014-11-28') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-12-01", '2014-12-01T07:58:00', '2014-12-01T12:03:00', '2014-12-01T12:58:00', '2014-12-01T17:03:00', 0, (select count(1) from Holiday where day='2014-12-01') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-12-02", '2014-12-02T07:56:00', '2014-12-02T12:02:00', '2014-12-02T12:57:00', '2014-12-02T17:02:00', 0, (select count(1) from Holiday where day='2014-12-02') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-12-03", '2014-12-03T07:57:00', '2014-12-03T12:01:00', '2014-12-03T12:58:00', '2014-12-03T17:03:00', 0, (select count(1) from Holiday where day='2014-12-03') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-12-04", NULL, NULL, NULL, NULL, 1, (select count(1) from Holiday where day='2014-12-04') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-12-05", '2014-12-05T07:59:00', '2014-12-05T12:00:00', '2014-12-05T12:56:00', '2014-12-05T17:01:00', 0, (select count(1) from Holiday where day='2014-12-05') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-12-08", '2014-12-08T07:57:00', '2014-12-08T12:02:00', '2014-12-08T13:00:00', '2014-12-08T17:01:00', 0, (select count(1) from Holiday where day='2014-12-08') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-12-09", '2014-12-09T07:57:00', '2014-12-09T12:02:00', '2014-12-09T12:57:00', '2014-12-09T17:04:00', 0, (select count(1) from Holiday where day='2014-12-09') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-12-10", '2014-12-10T07:58:00', '2014-12-10T12:02:00', '2014-12-10T12:59:00', '2014-12-10T17:02:00', 0, (select count(1) from Holiday where day='2014-12-10') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-12-11", '2014-12-11T07:57:00', '2014-12-11T12:03:00', '2014-12-11T12:57:00', '2014-12-11T17:01:00', 0, (select count(1) from Holiday where day='2014-12-11') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-12-12", '2014-12-12T07:59:00', '2014-12-12T12:03:00', '2014-12-12T12:57:00', '2014-12-12T17:02:00', 0, (select count(1) from Holiday where day='2014-12-12') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-12-15", NULL, NULL, NULL, NULL, 1, (select count(1) from Holiday where day='2014-12-15') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-12-16", NULL, NULL, NULL, NULL, 1, (select count(1) from Holiday where day='2014-12-16') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-12-17", '2014-12-17T07:58:00', '2014-12-17T12:01:00', '2014-12-17T12:58:00', '2014-12-17T17:03:00', 0, (select count(1) from Holiday where day='2014-12-17') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-12-18", '2014-12-18T07:59:00', '2014-12-18T12:03:00', '2014-12-18T12:59:00', '2014-12-18T17:02:00', 0, (select count(1) from Holiday where day='2014-12-18') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-12-19", '2014-12-19T07:57:00', '2014-12-19T12:02:00', '2014-12-19T12:58:00', '2014-12-19T17:03:00', 0, (select count(1) from Holiday where day='2014-12-19') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-12-22", '2014-12-22T08:00:00', '2014-12-22T12:00:00', '2014-12-22T12:59:00', '2014-12-22T17:01:00', 0, (select count(1) from Holiday where day='2014-12-22') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-12-23", '2014-12-23T08:00:00', '2014-12-23T12:01:00', '2014-12-23T12:58:00', '2014-12-23T17:01:00', 0, (select count(1) from Holiday where day='2014-12-23') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-12-24", NULL, NULL, NULL, NULL, 1, (select count(1) from Holiday where day='2014-12-24') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-12-25", '2014-12-25T07:59:00', '2014-12-25T12:04:00', '2014-12-25T12:57:00', '2014-12-25T17:01:00', 0, (select count(1) from Holiday where day='2014-12-25') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-12-26", '2014-12-26T07:58:00', '2014-12-26T12:01:00', '2014-12-26T12:57:00', '2014-12-26T17:02:00', 0, (select count(1) from Holiday where day='2014-12-26') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-12-29", '2014-12-29T07:59:00', '2014-12-29T12:02:00', '2014-12-29T12:58:00', '2014-12-29T17:01:00', 0, (select count(1) from Holiday where day='2014-12-29') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-12-30", '2014-12-30T07:57:00', '2014-12-30T12:01:00', '2014-12-30T12:57:00', '2014-12-30T17:03:00', 0, (select count(1) from Holiday where day='2014-12-30') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2014-12-31", '2014-12-31T07:59:00', '2014-12-31T12:02:00', '2014-12-31T12:58:00', '2014-12-31T17:02:00', 0, (select count(1) from Holiday where day='2014-12-31') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2015-01-01", '2015-01-01T08:00:00', '2015-01-01T12:01:00', '2015-01-01T12:58:00', '2015-01-01T17:00:00', 0, (select count(1) from Holiday where day='2015-01-01') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2015-01-02", '2015-01-02T07:58:00', '2015-01-02T12:01:00', '2015-01-02T12:57:00', '2015-01-02T17:01:00', 0, (select count(1) from Holiday where day='2015-01-02') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2015-01-05", '2015-01-05T07:56:00', '2015-01-05T12:03:00', '2015-01-05T12:56:00', '2015-01-05T17:02:00', 0, (select count(1) from Holiday where day='2015-01-05') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2015-01-06", '2015-01-06T07:58:00', '2015-01-06T12:00:00', '2015-01-06T12:58:00', '2015-01-06T17:03:00', 0, (select count(1) from Holiday where day='2015-01-06') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2015-01-07", '2015-01-07T07:57:00', '2015-01-07T12:02:00', '2015-01-07T12:58:00', '2015-01-07T17:02:00', 0, (select count(1) from Holiday where day='2015-01-07') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2015-01-08", NULL, NULL, NULL, NULL, 1, (select count(1) from Holiday where day='2015-01-08') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2015-01-09", '2015-01-09T07:59:00', '2015-01-09T12:03:00', '2015-01-09T12:56:00', '2015-01-09T17:02:00', 0, (select count(1) from Holiday where day='2015-01-09') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2015-01-12", '2015-01-12T07:57:00', '2015-01-12T12:02:00', '2015-01-12T12:58:00', '2015-01-12T17:02:00', 0, (select count(1) from Holiday where day='2015-01-12') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2015-01-13", '2015-01-13T07:57:00', '2015-01-13T12:02:00', '2015-01-13T12:57:00', '2015-01-13T17:04:00', 0, (select count(1) from Holiday where day='2015-01-13') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2015-01-14", '2015-01-14T07:59:00', '2015-01-14T12:02:00', '2015-01-14T12:58:00', '2015-01-14T17:03:00', 0, (select count(1) from Holiday where day='2015-01-14') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2015-01-15", '2015-01-15T07:57:00', '2015-01-15T12:04:00', '2015-01-15T12:57:00', '2015-01-15T17:02:00', 0, (select count(1) from Holiday where day='2015-01-15') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2015-01-16", '2015-01-16T07:56:00', '2015-01-16T12:02:00', '2015-01-16T12:59:00', '2015-01-16T17:02:00', 0, (select count(1) from Holiday where day='2015-01-16') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2015-01-19", '2015-01-19T07:58:00', '2015-01-19T12:04:00', '2015-01-19T12:56:00', '2015-01-19T17:00:00', 0, (select count(1) from Holiday where day='2015-01-19') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2015-01-20", '2015-01-20T07:58:00', '2015-01-20T12:02:00', '2015-01-20T12:58:00', '2015-01-20T17:00:00', 0, (select count(1) from Holiday where day='2015-01-20') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2015-01-21", '2015-01-21T07:57:00', '2015-01-21T12:02:00', '2015-01-21T12:58:00', '2015-01-21T17:03:00', 0, (select count(1) from Holiday where day='2015-01-21') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2015-01-22", '2015-01-22T07:58:00', '2015-01-22T12:02:00', '2015-01-22T12:58:00', '2015-01-22T17:01:00', 0, (select count(1) from Holiday where day='2015-01-22') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2015-01-23", '2015-01-23T07:58:00', '2015-01-23T12:02:00', '2015-01-23T12:58:00', '2015-01-23T17:02:00', 0, (select count(1) from Holiday where day='2015-01-23') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2015-01-26", '2015-01-26T07:59:00', '2015-01-26T12:04:00', '2015-01-26T12:59:00', '2015-01-26T17:02:00', 0, (select count(1) from Holiday where day='2015-01-26') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2015-01-27", '2015-01-27T08:00:00', '2015-01-27T12:02:00', '2015-01-27T12:58:00', '2015-01-27T17:04:00', 0, (select count(1) from Holiday where day='2015-01-27') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2015-01-28", '2015-01-28T07:58:00', '2015-01-28T12:02:00', '2015-01-28T12:57:00', '2015-01-28T17:01:00', 0, (select count(1) from Holiday where day='2015-01-28') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2015-01-29", '2015-01-29T07:59:00', '2015-01-29T12:03:00', '2015-01-29T12:58:00', '2015-01-29T17:03:00', 0, (select count(1) from Holiday where day='2015-01-29') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2015-01-30", '2015-01-30T07:59:00', '2015-01-30T12:02:00', '2015-01-30T12:59:00', '2015-01-30T17:03:00', 0, (select count(1) from Holiday where day='2015-01-30') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2015-02-02", '2015-02-02T07:59:00', '2015-02-02T12:03:00', '2015-02-02T12:59:00', '2015-02-02T17:01:00', 0, (select count(1) from Holiday where day='2015-02-02') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2015-02-03", '2015-02-03T07:57:00', '2015-02-03T12:01:00', '2015-02-03T12:58:00', '2015-02-03T17:00:00', 0, (select count(1) from Holiday where day='2015-02-03') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2015-02-04", '2015-02-04T07:59:00', '2015-02-04T12:03:00', '2015-02-04T12:59:00', '2015-02-04T17:02:00', 0, (select count(1) from Holiday where day='2015-02-04') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2015-02-05", '2015-02-05T07:57:00', '2015-02-05T12:00:00', '2015-02-05T12:58:00', '2015-02-05T17:03:00', 0, (select count(1) from Holiday where day='2015-02-05') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2015-02-06", '2015-02-06T07:57:00', '2015-02-06T12:01:00', '2015-02-06T12:59:00', '2015-02-06T17:02:00', 0, (select count(1) from Holiday where day='2015-02-06') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2015-02-09", '2015-02-09T07:57:00', '2015-02-09T12:02:00', '2015-02-09T12:56:00', '2015-02-09T17:04:00', 0, (select count(1) from Holiday where day='2015-02-09') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2015-02-10", '2015-02-10T07:59:00', '2015-02-10T12:03:00', '2015-02-10T12:59:00', '2015-02-10T17:02:00', 0, (select count(1) from Holiday where day='2015-02-10') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2015-02-11", '2015-02-11T07:59:00', '2015-02-11T12:00:00', '2015-02-11T12:57:00', '2015-02-11T17:01:00', 0, (select count(1) from Holiday where day='2015-02-11') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2015-02-12", '2015-02-12T07:57:00', '2015-02-12T12:01:00', '2015-02-12T12:56:00', '2015-02-12T17:02:00', 0, (select count(1) from Holiday where day='2015-02-12') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2015-02-13", '2015-02-13T07:57:00', '2015-02-13T12:02:00', '2015-02-13T12:57:00', '2015-02-13T17:01:00', 0, (select count(1) from Holiday where day='2015-02-13') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2015-02-16", '2015-02-16T07:58:00', '2015-02-16T12:01:00', '2015-02-16T12:57:00', '2015-02-16T17:02:00', 0, (select count(1) from Holiday where day='2015-02-16') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2015-02-17", '2015-02-17T07:57:00', '2015-02-17T12:02:00', '2015-02-17T12:59:00', '2015-02-17T17:00:00', 0, (select count(1) from Holiday where day='2015-02-17') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2015-02-18", NULL, NULL, NULL, NULL, 1, (select count(1) from Holiday where day='2015-02-18') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2015-02-19", '2015-02-19T07:58:00', '2015-02-19T12:00:00', '2015-02-19T12:58:00', '2015-02-19T17:02:00', 0, (select count(1) from Holiday where day='2015-02-19') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2015-02-20", '2015-02-20T07:59:00', '2015-02-20T12:03:00', '2015-02-20T12:57:00', '2015-02-20T17:02:00', 0, (select count(1) from Holiday where day='2015-02-20') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2015-02-23", '2015-02-23T07:58:00', '2015-02-23T12:02:00', '2015-02-23T12:56:00', '2015-02-23T17:03:00', 0, (select count(1) from Holiday where day='2015-02-23') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2015-02-24", '2015-02-24T07:57:00', '2015-02-24T12:04:00', '2015-02-24T12:57:00', '2015-02-24T17:03:00', 0, (select count(1) from Holiday where day='2015-02-24') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2015-02-25", '2015-02-25T07:58:00', '2015-02-25T12:02:00', '2015-02-25T12:57:00', '2015-02-25T17:00:00', 0, (select count(1) from Holiday where day='2015-02-25') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2015-02-26", '2015-02-26T07:56:00', '2015-02-26T12:04:00', '2015-02-26T12:57:00', '2015-02-26T17:01:00', 0, (select count(1) from Holiday where day='2015-02-26') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 2, "2015-02-27", '2015-02-27T07:56:00', '2015-02-27T12:04:00', '2015-02-27T12:59:00', '2015-02-27T17:02:00', 0, (select count(1) from Holiday where day='2015-02-27') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-10-01", '2014-10-01T08:04:00', '2014-10-01T11:58:00', '2014-10-01T13:05:00', '2014-10-01T16:53:00', 0, (select count(1) from Holiday where day='2014-10-01') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-10-02", '2014-10-02T08:06:00', '2014-10-02T11:55:00', '2014-10-02T13:05:00', '2014-10-02T16:57:00', 0, (select count(1) from Holiday where day='2014-10-02') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-10-03", '2014-10-03T08:07:00', '2014-10-03T11:55:00', '2014-10-03T13:04:00', '2014-10-03T16:54:00', 0, (select count(1) from Holiday where day='2014-10-03') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-10-06", NULL, NULL, NULL, NULL, 1, (select count(1) from Holiday where day='2014-10-06') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-10-07", '2014-10-07T08:05:00', '2014-10-07T11:55:00', '2014-10-07T13:02:00', '2014-10-07T16:56:00', 0, (select count(1) from Holiday where day='2014-10-07') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-10-08", NULL, NULL, NULL, NULL, 1, (select count(1) from Holiday where day='2014-10-08') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-10-09", '2014-10-09T08:02:00', '2014-10-09T11:57:00', '2014-10-09T13:08:00', '2014-10-09T16:57:00', 0, (select count(1) from Holiday where day='2014-10-09') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-10-10", '2014-10-10T08:05:00', '2014-10-10T11:55:00', '2014-10-10T13:01:00', '2014-10-10T16:52:00', 0, (select count(1) from Holiday where day='2014-10-10') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-10-13", '2014-10-13T08:06:00', '2014-10-13T11:59:00', '2014-10-13T13:08:00', '2014-10-13T16:51:00', 0, (select count(1) from Holiday where day='2014-10-13') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-10-14", '2014-10-14T08:05:00', '2014-10-14T11:56:00', '2014-10-14T13:00:00', '2014-10-14T16:54:00', 0, (select count(1) from Holiday where day='2014-10-14') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-10-15", '2014-10-15T08:05:00', '2014-10-15T11:52:00', '2014-10-15T13:06:00', '2014-10-15T16:57:00', 0, (select count(1) from Holiday where day='2014-10-15') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-10-16", NULL, NULL, NULL, NULL, 1, (select count(1) from Holiday where day='2014-10-16') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-10-17", '2014-10-17T08:05:00', '2014-10-17T11:54:00', '2014-10-17T13:05:00', '2014-10-17T16:55:00', 0, (select count(1) from Holiday where day='2014-10-17') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-10-20", '2014-10-20T08:06:00', '2014-10-20T11:56:00', '2014-10-20T13:05:00', '2014-10-20T16:55:00', 0, (select count(1) from Holiday where day='2014-10-20') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-10-21", '2014-10-21T08:07:00', '2014-10-21T11:55:00', '2014-10-21T13:02:00', '2014-10-21T16:58:00', 0, (select count(1) from Holiday where day='2014-10-21') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-10-22", '2014-10-22T08:08:00', '2014-10-22T11:56:00', '2014-10-22T13:09:00', '2014-10-22T16:53:00', 0, (select count(1) from Holiday where day='2014-10-22') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-10-23", NULL, NULL, NULL, NULL, 1, (select count(1) from Holiday where day='2014-10-23') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-10-24", '2014-10-24T08:05:00', '2014-10-24T11:58:00', '2014-10-24T13:06:00', '2014-10-24T16:56:00', 0, (select count(1) from Holiday where day='2014-10-24') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-10-27", '2014-10-27T08:08:00', '2014-10-27T11:55:00', '2014-10-27T13:06:00', '2014-10-27T16:59:00', 0, (select count(1) from Holiday where day='2014-10-27') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-10-28", '2014-10-28T08:07:00', '2014-10-28T11:52:00', '2014-10-28T13:06:00', '2014-10-28T16:54:00', 0, (select count(1) from Holiday where day='2014-10-28') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-10-29", '2014-10-29T08:07:00', '2014-10-29T11:58:00', '2014-10-29T13:04:00', '2014-10-29T16:55:00', 0, (select count(1) from Holiday where day='2014-10-29') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-10-30", '2014-10-30T08:06:00', '2014-10-30T11:54:00', '2014-10-30T13:02:00', '2014-10-30T16:57:00', 0, (select count(1) from Holiday where day='2014-10-30') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-10-31", NULL, NULL, NULL, NULL, 1, (select count(1) from Holiday where day='2014-10-31') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-11-03", '2014-11-03T08:08:00', '2014-11-03T11:54:00', '2014-11-03T13:04:00', '2014-11-03T16:57:00', 0, (select count(1) from Holiday where day='2014-11-03') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-11-04", NULL, NULL, NULL, NULL, 1, (select count(1) from Holiday where day='2014-11-04') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-11-05", '2014-11-05T08:07:00', '2014-11-05T11:53:00', '2014-11-05T13:04:00', '2014-11-05T16:56:00', 0, (select count(1) from Holiday where day='2014-11-05') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-11-06", '2014-11-06T08:01:00', '2014-11-06T11:53:00', '2014-11-06T13:03:00', '2014-11-06T16:54:00', 0, (select count(1) from Holiday where day='2014-11-06') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-11-07", '2014-11-07T08:03:00', '2014-11-07T11:58:00', '2014-11-07T13:06:00', '2014-11-07T16:54:00', 0, (select count(1) from Holiday where day='2014-11-07') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-11-10", '2014-11-10T08:09:00', '2014-11-10T11:54:00', '2014-11-10T13:07:00', '2014-11-10T16:54:00', 0, (select count(1) from Holiday where day='2014-11-10') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-11-11", NULL, NULL, NULL, NULL, 1, (select count(1) from Holiday where day='2014-11-11') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-11-12", NULL, NULL, NULL, NULL, 1, (select count(1) from Holiday where day='2014-11-12') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-11-13", NULL, NULL, NULL, NULL, 1, (select count(1) from Holiday where day='2014-11-13') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-11-14", '2014-11-14T08:08:00', '2014-11-14T11:58:00', '2014-11-14T13:06:00', '2014-11-14T16:54:00', 0, (select count(1) from Holiday where day='2014-11-14') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-11-17", '2014-11-17T08:01:00', '2014-11-17T11:55:00', '2014-11-17T13:08:00', '2014-11-17T16:56:00', 0, (select count(1) from Holiday where day='2014-11-17') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-11-18", '2014-11-18T08:05:00', '2014-11-18T11:52:00', '2014-11-18T13:08:00', '2014-11-18T16:57:00', 0, (select count(1) from Holiday where day='2014-11-18') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-11-19", '2014-11-19T08:08:00', '2014-11-19T11:57:00', '2014-11-19T13:04:00', '2014-11-19T16:55:00', 0, (select count(1) from Holiday where day='2014-11-19') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-11-20", '2014-11-20T08:07:00', '2014-11-20T11:55:00', '2014-11-20T13:06:00', '2014-11-20T16:57:00', 0, (select count(1) from Holiday where day='2014-11-20') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-11-21", NULL, NULL, NULL, NULL, 1, (select count(1) from Holiday where day='2014-11-21') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-11-24", NULL, NULL, NULL, NULL, 1, (select count(1) from Holiday where day='2014-11-24') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-11-25", NULL, NULL, NULL, NULL, 1, (select count(1) from Holiday where day='2014-11-25') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-11-26", '2014-11-26T08:04:00', '2014-11-26T11:59:00', '2014-11-26T13:07:00', '2014-11-26T16:55:00', 0, (select count(1) from Holiday where day='2014-11-26') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-11-27", '2014-11-27T08:03:00', '2014-11-27T11:56:00', '2014-11-27T13:05:00', '2014-11-27T17:00:00', 0, (select count(1) from Holiday where day='2014-11-27') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-11-28", NULL, NULL, NULL, NULL, 1, (select count(1) from Holiday where day='2014-11-28') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-12-01", '2014-12-01T08:08:00', '2014-12-01T11:53:00', '2014-12-01T13:06:00', '2014-12-01T16:51:00', 0, (select count(1) from Holiday where day='2014-12-01') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-12-02", NULL, NULL, NULL, NULL, 1, (select count(1) from Holiday where day='2014-12-02') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-12-03", '2014-12-03T08:08:00', '2014-12-03T11:53:00', '2014-12-03T13:05:00', '2014-12-03T16:55:00', 0, (select count(1) from Holiday where day='2014-12-03') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-12-04", '2014-12-04T08:04:00', '2014-12-04T11:57:00', '2014-12-04T13:03:00', '2014-12-04T16:57:00', 0, (select count(1) from Holiday where day='2014-12-04') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-12-05", '2014-12-05T08:05:00', '2014-12-05T11:58:00', '2014-12-05T13:02:00', '2014-12-05T16:58:00', 0, (select count(1) from Holiday where day='2014-12-05') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-12-08", '2014-12-08T08:05:00', '2014-12-08T12:00:00', '2014-12-08T13:06:00', '2014-12-08T16:57:00', 0, (select count(1) from Holiday where day='2014-12-08') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-12-09", NULL, NULL, NULL, NULL, 1, (select count(1) from Holiday where day='2014-12-09') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-12-10", '2014-12-10T08:04:00', '2014-12-10T11:56:00', '2014-12-10T13:06:00', '2014-12-10T16:54:00', 0, (select count(1) from Holiday where day='2014-12-10') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-12-11", '2014-12-11T08:04:00', '2014-12-11T11:58:00', '2014-12-11T13:01:00', '2014-12-11T16:55:00', 0, (select count(1) from Holiday where day='2014-12-11') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-12-12", '2014-12-12T08:04:00', '2014-12-12T11:55:00', '2014-12-12T13:01:00', '2014-12-12T16:52:00', 0, (select count(1) from Holiday where day='2014-12-12') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-12-15", '2014-12-15T08:02:00', '2014-12-15T11:54:00', '2014-12-15T13:06:00', '2014-12-15T16:53:00', 0, (select count(1) from Holiday where day='2014-12-15') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-12-16", '2014-12-16T08:05:00', '2014-12-16T11:57:00', '2014-12-16T13:03:00', '2014-12-16T16:59:00', 0, (select count(1) from Holiday where day='2014-12-16') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-12-17", '2014-12-17T08:03:00', '2014-12-17T11:57:00', '2014-12-17T13:08:00', '2014-12-17T16:57:00', 0, (select count(1) from Holiday where day='2014-12-17') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-12-18", NULL, NULL, NULL, NULL, 1, (select count(1) from Holiday where day='2014-12-18') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-12-19", NULL, NULL, NULL, NULL, 1, (select count(1) from Holiday where day='2014-12-19') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-12-22", NULL, NULL, NULL, NULL, 1, (select count(1) from Holiday where day='2014-12-22') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-12-23", NULL, NULL, NULL, NULL, 1, (select count(1) from Holiday where day='2014-12-23') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-12-24", '2014-12-24T08:05:00', '2014-12-24T11:53:00', '2014-12-24T13:06:00', '2014-12-24T16:52:00', 0, (select count(1) from Holiday where day='2014-12-24') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-12-25", '2014-12-25T08:04:00', '2014-12-25T11:57:00', '2014-12-25T13:08:00', '2014-12-25T16:53:00', 0, (select count(1) from Holiday where day='2014-12-25') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-12-26", '2014-12-26T08:03:00', '2014-12-26T11:55:00', '2014-12-26T13:08:00', '2014-12-26T16:54:00', 0, (select count(1) from Holiday where day='2014-12-26') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-12-29", '2014-12-29T08:05:00', '2014-12-29T11:55:00', '2014-12-29T13:03:00', '2014-12-29T16:56:00', 0, (select count(1) from Holiday where day='2014-12-29') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-12-30", '2014-12-30T08:05:00', '2014-12-30T11:53:00', '2014-12-30T13:03:00', '2014-12-30T16:51:00', 0, (select count(1) from Holiday where day='2014-12-30') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2014-12-31", '2014-12-31T08:07:00', '2014-12-31T11:54:00', '2014-12-31T13:03:00', '2014-12-31T16:57:00', 0, (select count(1) from Holiday where day='2014-12-31') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2015-01-01", '2015-01-01T08:03:00', '2015-01-01T11:54:00', '2015-01-01T13:02:00', '2015-01-01T16:55:00', 0, (select count(1) from Holiday where day='2015-01-01') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2015-01-02", NULL, NULL, NULL, NULL, 1, (select count(1) from Holiday where day='2015-01-02') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2015-01-05", NULL, NULL, NULL, NULL, 1, (select count(1) from Holiday where day='2015-01-05') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2015-01-06", '2015-01-06T08:06:00', '2015-01-06T11:55:00', '2015-01-06T13:06:00', '2015-01-06T16:57:00', 0, (select count(1) from Holiday where day='2015-01-06') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2015-01-07", '2015-01-07T08:05:00', '2015-01-07T11:52:00', '2015-01-07T13:04:00', '2015-01-07T16:53:00', 0, (select count(1) from Holiday where day='2015-01-07') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2015-01-08", '2015-01-08T08:01:00', '2015-01-08T11:59:00', '2015-01-08T13:07:00', '2015-01-08T16:56:00', 0, (select count(1) from Holiday where day='2015-01-08') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2015-01-09", '2015-01-09T08:05:00', '2015-01-09T11:56:00', '2015-01-09T13:09:00', '2015-01-09T16:54:00', 0, (select count(1) from Holiday where day='2015-01-09') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2015-01-12", '2015-01-12T08:05:00', '2015-01-12T11:54:00', '2015-01-12T13:03:00', '2015-01-12T16:54:00', 0, (select count(1) from Holiday where day='2015-01-12') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2015-01-13", '2015-01-13T08:09:00', '2015-01-13T11:56:00', '2015-01-13T13:07:00', '2015-01-13T16:54:00', 0, (select count(1) from Holiday where day='2015-01-13') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2015-01-14", NULL, NULL, NULL, NULL, 1, (select count(1) from Holiday where day='2015-01-14') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2015-01-15", '2015-01-15T08:04:00', '2015-01-15T11:55:00', '2015-01-15T13:05:00', '2015-01-15T16:53:00', 0, (select count(1) from Holiday where day='2015-01-15') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2015-01-16", NULL, NULL, NULL, NULL, 1, (select count(1) from Holiday where day='2015-01-16') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2015-01-19", '2015-01-19T08:06:00', '2015-01-19T11:53:00', '2015-01-19T13:04:00', '2015-01-19T16:53:00', 0, (select count(1) from Holiday where day='2015-01-19') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2015-01-20", NULL, NULL, NULL, NULL, 1, (select count(1) from Holiday where day='2015-01-20') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2015-01-21", NULL, NULL, NULL, NULL, 1, (select count(1) from Holiday where day='2015-01-21') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2015-01-22", '2015-01-22T08:07:00', '2015-01-22T11:52:00', '2015-01-22T13:01:00', '2015-01-22T16:55:00', 0, (select count(1) from Holiday where day='2015-01-22') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2015-01-23", '2015-01-23T08:05:00', '2015-01-23T11:59:00', '2015-01-23T13:02:00', '2015-01-23T16:58:00', 0, (select count(1) from Holiday where day='2015-01-23') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2015-01-26", '2015-01-26T08:05:00', '2015-01-26T11:56:00', '2015-01-26T13:02:00', '2015-01-26T16:54:00', 0, (select count(1) from Holiday where day='2015-01-26') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2015-01-27", '2015-01-27T08:08:00', '2015-01-27T11:59:00', '2015-01-27T13:03:00', '2015-01-27T16:59:00', 0, (select count(1) from Holiday where day='2015-01-27') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2015-01-28", NULL, NULL, NULL, NULL, 1, (select count(1) from Holiday where day='2015-01-28') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2015-01-29", NULL, NULL, NULL, NULL, 1, (select count(1) from Holiday where day='2015-01-29') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2015-01-30", '2015-01-30T08:02:00', '2015-01-30T11:58:00', '2015-01-30T13:05:00', '2015-01-30T16:53:00', 0, (select count(1) from Holiday where day='2015-01-30') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2015-02-02", '2015-02-02T08:08:00', '2015-02-02T11:52:00', '2015-02-02T13:05:00', '2015-02-02T16:59:00', 0, (select count(1) from Holiday where day='2015-02-02') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2015-02-03", NULL, NULL, NULL, NULL, 1, (select count(1) from Holiday where day='2015-02-03') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2015-02-04", '2015-02-04T08:01:00', '2015-02-04T11:56:00', '2015-02-04T13:07:00', '2015-02-04T16:56:00', 0, (select count(1) from Holiday where day='2015-02-04') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2015-02-05", '2015-02-05T08:05:00', '2015-02-05T11:55:00', '2015-02-05T13:05:00', '2015-02-05T16:56:00', 0, (select count(1) from Holiday where day='2015-02-05') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2015-02-06", '2015-02-06T08:04:00', '2015-02-06T11:55:00', '2015-02-06T13:01:00', '2015-02-06T16:58:00', 0, (select count(1) from Holiday where day='2015-02-06') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2015-02-09", NULL, NULL, NULL, NULL, 1, (select count(1) from Holiday where day='2015-02-09') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2015-02-10", '2015-02-10T08:03:00', '2015-02-10T11:55:00', '2015-02-10T13:05:00', '2015-02-10T16:57:00', 0, (select count(1) from Holiday where day='2015-02-10') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2015-02-11", NULL, NULL, NULL, NULL, 1, (select count(1) from Holiday where day='2015-02-11') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2015-02-12", NULL, NULL, NULL, NULL, 1, (select count(1) from Holiday where day='2015-02-12') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2015-02-13", '2015-02-13T08:03:00', '2015-02-13T11:59:00', '2015-02-13T13:02:00', '2015-02-13T16:58:00', 0, (select count(1) from Holiday where day='2015-02-13') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2015-02-16", NULL, NULL, NULL, NULL, 1, (select count(1) from Holiday where day='2015-02-16') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2015-02-17", '2015-02-17T08:09:00', '2015-02-17T11:55:00', '2015-02-17T13:03:00', '2015-02-17T16:55:00', 0, (select count(1) from Holiday where day='2015-02-17') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2015-02-18", '2015-02-18T08:04:00', '2015-02-18T11:54:00', '2015-02-18T13:05:00', '2015-02-18T16:57:00', 0, (select count(1) from Holiday where day='2015-02-18') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2015-02-19", '2015-02-19T08:02:00', '2015-02-19T11:56:00', '2015-02-19T13:06:00', '2015-02-19T16:57:00', 0, (select count(1) from Holiday where day='2015-02-19') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2015-02-20", '2015-02-20T08:03:00', '2015-02-20T11:54:00', '2015-02-20T13:08:00', '2015-02-20T16:55:00', 0, (select count(1) from Holiday where day='2015-02-20') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2015-02-23", '2015-02-23T08:05:00', '2015-02-23T11:55:00', '2015-02-23T13:06:00', '2015-02-23T16:57:00', 0, (select count(1) from Holiday where day='2015-02-23') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2015-02-24", '2015-02-24T08:05:00', '2015-02-24T11:58:00', '2015-02-24T13:03:00', '2015-02-24T16:54:00', 0, (select count(1) from Holiday where day='2015-02-24') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2015-02-25", '2015-02-25T08:04:00', '2015-02-25T11:52:00', '2015-02-25T13:06:00', '2015-02-25T16:57:00', 0, (select count(1) from Holiday where day='2015-02-25') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2015-02-26", '2015-02-26T08:06:00', '2015-02-26T11:59:00', '2015-02-26T13:04:00', '2015-02-26T16:56:00', 0, (select count(1) from Holiday where day='2015-02-26') );
insert into Workday( userId, day, startIn, lunchOut, lunchIn, endOut, isPaidTimeOff, isHoliday )
   values ( 3, "2015-02-27", '2015-02-27T08:05:00', '2015-02-27T11:57:00', '2015-02-27T13:04:00', '2015-02-27T16:56:00', 0, (select count(1) from Holiday where day='2015-02-27') );
