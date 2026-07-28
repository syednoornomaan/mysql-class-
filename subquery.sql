create database corr_db;
use corr_db;
create table employee_c( id int,  name varchar(20), salary int);
insert into employee_c values(1, 'a', 100), (2, 'b', 250), (3, 'c', 400), (4, 'd', 300);
insert into employee_c values(5, 'aman', 250);
-- highest salary kya hai
select max(salary) from employee_c;

select * from employee_c where salary=400;

-- nested query/subquery(max)
-- singlr role subquery(jo single role attened kare use single role subquery kehte hai)
select * from employee_c where salary=(select max(salary) from employee_c);


-- minimum salary
select min(salary) from employee_c;

select * from employee_c where salary=100;

-- nested query/subquery(min)
select * from employee_c where salary=(select min(salary) from employee_c);

select * from employee_c;
select salary from employee_c where name='b';
select * from employee_c where salary=(select salary from employee_c where name='b');

select avg(salary) from employee_c;
select name, salary from employee_c where salary>260;

select * from employee_c where salary>(select avg(salary) from employee_c);

use world;
-- get the name of city where the district of the city is same for the city abu dhai
select name from city where district = (select district from city where name ='abu dhabi');
-- get all the columns from the city tables where the population is maximum 
select * from city where population =(select max(population) from city); 
-- get the district and the name of the city where the  countrycode is same for herat
select district, name from city where countrycode = (select countrycode from city where name='herat');
-- get the district , city and population for all the countries where amsterdam is and sort this data byu the population  
select district, name, population from city where countrycode=(select countrycode from city where name ='amsterdam') order by population;



