create database moviesdb;

use moviesdb; -- you are using the database (simple term folder)

-- create is Ddl
create table deepika( filmname varchar(30) , amount int , director varchar(30)) ;

describe deepika;  -- tell about the table 

-- insert data =>dml
insert into deepika values('kalki', '10000000', 'karan johor');
select * from deepika; -- select is Dql

-- between operator
select * from country where indepyear between 1800 and 1950; 

-- in operator 
select * from country where indepyear in ('1975' , '1987');  


