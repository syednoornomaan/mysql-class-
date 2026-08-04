use newdb2;
 create table test1( roluno int);-- create => DDt statement
 insert into test1 values(10); -- DML Statement
 insert into test1 values(30); -- DML Statement
insert into test1 values('aman'); -- ERROR bcz of aman
select * from test1;



create table test2( rollno tinyint); -- DOL statement
insert into test2 values(127);
insert into test2 values(-128);
insert into test2 values(True)；
select * from test2;
to 255 but no negative number
create table test3( rolino tinyint unsigned);-- create => D0L state
insert into test3 values(129);
insert into test2 values(255);
insert into test2 values(256); -- error

-- string datatype
-- varchar
-- char => fixed size of character 

drop table test4;
create table test4( gender char(10) ); -- create => ddl statement 
insert into test4 values('male');
select * from test4;


create table test6(name varchar(20) ); -- create => ddl satetment 
insert into test6 values ('om'); -- 
select * from test6;

show table status like 'test4';
show table status like 'test6';

create table test7(name varchar(10), name2 varchar(10) );
insert into test7 values('abc', 'abc');
insert into test7 values('def', 'def');
-- chatr will remove the tralling whitespace

select name, char_length(name), name2, char_length(name2)
from test7;
select table_name
from information_schema.tables
where table_schema=database()
and table_name in ('test6', 'test4');

insert into test7 values('aman', null);
select * from test7;

-- set of rules that we apply on the volume 
-- to prevent inalid data entry
-- mela => entry security guard

-- not null 
create table test9(id int, name varchar(20) not null);
insert into test9 values(10, 'abhishek');
insert into test9 values(10, null);  -- constraint worked0
select * from test9;


create table test10(id int, name varchar(20) );
insert into test10 values(10, 'abhishek');
insert into test10 (id) values (11); 
select * from test10;

create table test11(id int, name varchar(20) default 'regex');
insert into test11 values(10, 'abhishek');
insert into test11 (id) values (11);
insert into test11 (name) values ('noman'); -- default in id is null
select * from test11;


create table test13(id int unique, name varchar(20));
insert into test13 values(10, 'abhishek');
insert into test13 values(10, 'Noman');  -- error
insert into test13 values(11, 'abhishek');  --  works
insert into test13 values(null, 'happy'); -- works
insert into test13 values(null, 'isha');
select * from test13;

-- 1 table only 1 
-- primary => unique + not null
create table test14(id int primary key, name varchar(20));
insert into test14 values(10, 'Noman');
insert into test14 values(null, 'ads');
select * from test14