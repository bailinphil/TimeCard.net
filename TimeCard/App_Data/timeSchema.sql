drop table if exists holiday;
drop table if exists workday;
drop table if exists user;
drop table if exists department;

create table department(
  id int(10) not null primary key
  , title varchar(255) not null
);

create table user (
  id int(10) not null primary key
  , username varchar(40) not null
  , passwordhash char(32) not null
  , name varchar( 100 ) not null
  , isadmin tinyint not null
  , department_id int(10)
  /*, foreign key usertodepartment (department_id) references department(id) on delete set null*/
);

create table workday (
  userid int(10) not null
  , day date not null
  , startin timestamp null
  , lunchout timestamp null
  , lunchin timestamp null
  , endout timestamp null
  , ispaidtimeoff tinyint not null default 0
  , isholiday tinyint not null default 0      
  , primary key ( userid, day )
  /*, foreign key workdaytouser (userid) references user(id) on delete cascade*/
);

create table holiday (
  day date not null
  , name varchar(30)
  , primary key (day)
);
  

insert into department (id, title)
values (1, "accounting")
,      (2, "human resources" )
,      (3, "field work" );

insert into user 
  (id, username, passwordhash, name, isadmin, department_id) 
values 
    (1,  "admin", "abc123", "phil", 1, null )
  , (2,  "honestabe", "password1", "adam", 0, 2 )
  , (3,  "lazybob", "password2", "bob", 0, 2 );

insert into holiday (day, name)
values 
  ("2014-07-04", "independence day" )
, ("2014-11-27", "thanksgiving" )
, ("2014-11-28", "black friday" )
, ("2014-12-25", "christmas" );

