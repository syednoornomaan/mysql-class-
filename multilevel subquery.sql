use corr_db;
create table employee_d( id int,  name varchar(20), salary int);
insert into employee_d values(1, 'a', 100), (2, 'b', 250), (3, 'c', 400), (4, 'd', 100), (5, 'a', 300);

show tables;

select * from employee_d; -- multilevel subquery me first operator (in) hota hai
select * from employee_d 
where salary in(select salary from employee_d where name='a');

select * from employee_d   -- =any operator and or operator are same working 
where salary =any (select salary from employee_d where name='a');

# select * from employee_d where salary > 100. or salary>300
select * from employee_d 
where salary >any (select salary from employee_d where name='a');

select * from employee_d 
where salary <any(select salary from employee_d where name='a');

select * from employee_d 
where salary >all (select salary from employee_d where name='a');