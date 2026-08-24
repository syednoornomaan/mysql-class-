-- views in sql 
-- [ A SQL View is a virtual table created from the result of a SELECT query.
-- It does not store data physically but displays data stored in underlying tables. 
-- Views help simplify complex queries, enhance security and present data in a cleaner, customized format.]
-- acces data from underlining table  .
create database viewdb2;
use viewdb2;

create table employe
(id int, name varchar(20), salary int);
insert into employe values(1,'amar',10000),(2,'shivank',20000);

-- create is used to create view object
-- object data structure

create view emp_view as select id, name from employe;
select * from emp_view;
select salary from emp_view; -- will give you error

-- row new insert 
insert into employe values(3,'noman', 500000);
select * from emp_view; -- base table change view also got new data 
