-- Create Database
CREATE DATABASE IF NOT EXISTS EmployeeDB;

-- Select Database
USE EmployeeDB;

-- Create Employee Table
CREATE TABLE IF NOT EXISTS employee (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    Dept VARCHAR(30),
    City VARCHAR(30),
    Gender CHAR(1),
    Salary INT,
    JoinDate DATE,
    Role VARCHAR(30)
);

-- Insert Employee Records
INSERT INTO employee (EmpID, Name, Dept, City, Gender, Salary, JoinDate, Role) VALUES
(1, 'Alice', 'HR', 'New York', 'F', 55000, '2019-03-15', 'Manager'),
(2, 'Bob', 'IT', 'Chicago', 'M', 72000, '2020-07-22', 'Developer'),
(3, 'Carol', 'Finance', 'New York', 'F', 68000, '2018-11-01', 'Analyst'),
(4, 'David', 'HR', 'Chicago', 'M', 52000, '2021-01-10', 'Executive'),
(5, 'Eve', 'IT', 'Houston', 'F', 85000, '2017-06-30', 'Senior Dev'),
(6, 'Frank', 'Finance', 'New York', 'M', 74000, '2019-09-14', 'Manager'),
(7, 'Grace', 'Marketing', 'Chicago', 'F', 60000, '2022-02-28', 'Executive'),
(8, 'Hank', 'IT', 'Houston', 'M', 90000, '2016-04-05', 'Lead'),
(9, 'Ivy', 'HR', 'New York', 'F', 58000, '2020-12-19', 'Executive'),
(10, 'Jack', 'Finance', 'Chicago', 'M', 65000, '2021-03-07', 'Analyst'),
(11, 'Karen', 'Marketing', 'Houston', 'F', 62000, '2018-08-23', 'Manager'),
(12, 'Leo', 'IT', 'New York', 'M', 78000, '2019-11-11', 'Developer'),
(13, 'Mia', 'HR', 'Chicago', 'F', 53000, '2022-05-16', 'Executive'),
(14, 'Nate', 'Finance', 'Houston', 'M', 71000, '2017-12-02', 'Manager'),
(15, 'Olivia', 'Marketing', 'New York', 'F', 66000, '2020-06-18', 'Analyst'),
(16, 'Paul', 'IT', 'Chicago', 'M', 82000, '2018-03-27', 'Senior Dev'),
(17, 'Quinn', 'HR', 'Houston', 'F', 57000, '2021-09-09', 'Executive'),
(18, 'Rita', 'Finance', 'New York', 'F', 76000, '2019-01-25', 'Lead'),
(19, 'Sam', 'Marketing', 'Chicago', 'M', 63000, '2022-07-14', 'Executive'),
(20, 'Tina', 'IT', 'Houston', 'F', 88000, '2016-10-31', 'Lead'),
(21, 'Uma', 'HR', 'New York', 'F', 60000, '2020-04-03', 'Manager'),
(22, 'Victor', 'Finance', 'Chicago', 'M', 69000, '2018-07-19', 'Analyst'),
(23, 'Wendy', 'Marketing', 'Houston', 'F', 64000, '2021-11-27', 'Manager'),
(24, 'Xander', 'IT', 'New York', 'M', 95000, '2015-02-14', 'Architect'),
(25, 'Yara', 'HR', 'Chicago', 'F', 54000, '2022-09-08', 'Executive'),
(26, 'Zoe', 'Finance', 'Houston', 'F', 73000, '2019-05-21', 'Manager'),
(27, 'Aaron', 'Marketing', 'New York', 'M', 67000, '2020-10-15', 'Analyst'),
(28, 'Bella', 'IT', 'Chicago', 'F', 80000, '2017-08-06', 'Senior Dev'),
(29, 'Carlos', 'HR', 'Houston', 'M', 56000, '2021-06-24', 'Executive'),
(30, 'Diana', 'Finance', 'New York', 'F', 77000, '2018-02-09', 'Lead');

-- Display All Records
SELECT * FROM employee;

-- Q1 . Find the total number of employees in each department.
select dept, count(*) from employee as totalempolyees 
group by dept;

-- Q2. Find the total salary paid per department.
select dept, sum(salary) as totalsalary 
from employee
group by dept asc; 

-- Q3. Find the average salary in each city.
select city, avg(salary) as average_salary
from employee
group by city
order by city;
 
-- 4. Find the maximum salary in each department
select dept, max(salary) as max_salary
from employee
group by dept;

-- 5.Find the minimum salary in each department.
select dept, min(salary) as min_salary
from employee
group by dept;

-- Q6. List departments with their employee count, sorted by count descending.
select dept, count(*) as employee_count
from employee
group by dept
order by employee_count desc;


-- Q7
SELECT City, SUM(Salary) AS TotalSalary
FROM employee
GROUP BY City
ORDER BY TotalSalary ASC;

-- Q8
SELECT name, dept,salary
FROM employee
ORDER BY Dept ASC, Salary DESC;

-- Q9
SELECT name, dept,salary
FROM employee
ORDER BY City ASC, JoinDate ASC;

-- Q10
SELECT  dept, count(*)
FROM employee
having count(*)>7;

-- Q11 Q11. Show only departments that have more than 7 employees.
select dept, count(*) as empcount
from employee
group by dept
having count(*) > 7;

-- Q12. Show departments where the average salary exceeds 65000.
select dept, avg(salary) as avg_salary
from employee
group by dept
having avg(salary) > 65000;
-- Q13. Show cities where the total salary bill is greater than 650000.
select city, sum(salary) as total_salary
from employee
group by city
having sum(salary) > 650000;
-- Q14. Show departments where the maximum salary is at least 80000
select dept, max(salary) as max_salary
from employee
group by dept
having max(salary) >= 80000;

-- Q15
SELECT Role, COUNT(*) AS TotalEmployees
FROM employee
GROUP BY Role
HAVING COUNT(*) > 5;

-- Q16
select avg(salary) as companyavgsalary from employee;

-- Q17
select dept, count(*)gender from employee where gender = 'f' group by dept ; 


-- Q18. Find the highest and lowest salary across the entire company
select max(salary) as highest_salary,
       min(salary) as lowest_salary
from employee;
-- Q19. Find the total salary paid to employees who joined after 2019-01-01
select sum(salary) as total_salary
from employee
where joindate > '2019-01-01';
-- Q20. Find the average salary grouped by gender.
select gender, avg(salary) as avg_salary
from employee
group by gender;
-- Q21. Find total employees grouped by department AND city
select dept, city, count(*) as total_employees
from employee
group by dept, city;
-- Q22. Find average salary grouped by department AND gender.
select dept, gender, avg(salary) as avg_salary
from employee
group by dept, gender;

-- Q23 . Find total salary grouped by city AND role, ordered by city and total salary descending.
SELECT City, Role, SUM(Salary) AS TotalSalary
FROM employee
GROUP BY City, Role
ORDER BY City ASC, TotalSalary DESC;

--  Q24. Count employees grouped by department AND role, show only groups with more than 1 employee.
SELECT dept,
       role,
       COUNT(*) AS employee_count
FROM employees
GROUP BY dept, role
HAVING COUNT(*) > 1;
-- Q25.Find max salary grouped by city AND gender.
