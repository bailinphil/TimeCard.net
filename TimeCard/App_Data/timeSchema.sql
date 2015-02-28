drop table if exists holiday;
drop table if exists workday;
drop table if exists user;
drop table if exists department;

create table department(
  id integer not null primary key autoincrement
  , title varchar(255) not null
);

create table user (
  id integer not null primary key autoincrement
  , username varchar(40) not null
  , password varchar(40) not null
  , name varchar( 100 ) not null
  , isadmin tinyint not null
  , departmentid integer
  /*, foreign key usertodepartment (department_id) references department(id) on delete set null*/
);

create table workday (
  userid integer not null
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
  

insert into department (title)
values ("accounting")
,      ("human resources" )
,      ("field work" );

insert into user 
  (username, password, name, isadmin, departmentid) 
values 
    ("admin", "abc123", "phil", 1, null )
  , ("honestabe", "password1", "abe", 0, 2 )
  , ("lazybob", "password2", "bob", 0, 2 );

insert into holiday (day, name)
values 
  ("2014-07-04", "independence day" )
, ("2014-11-27", "thanksgiving" )
, ("2014-11-28", "black friday" )
, ("2014-12-25", "christmas" );

