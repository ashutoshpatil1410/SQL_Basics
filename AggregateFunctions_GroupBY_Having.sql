
create table employee_info
(
	emp_id int primary key,
	emp_name varchar(50) not null,
	emp_salary int not null,
	emp_department varchar(50) not null,
	emp_city varchar(50) not null
);

insert into employee_info
values(101,'ashutosh',40000,'automation','kolhapur'),
(102,'bhagwan',80000,'aumation','kolhapur'),
(103,'atish',35000,'it','mumbai'),
(104,'alfia',45000,'hr','nashik'),
(105,'harshal',60000,'manual','nagpur'),
(106,'nayan','65000','performance','nagpur')

delete from employee_info
where emp_id=106;

insert into employee_info
values(106,'nayan',65000,'performance','nagpur');

select * from employee_info

select sum(emp_salary) as total_salary from employee_info;
select min(emp_salary) as minimum_salary from employee_info;
select max(emp_salary) as maximum_salary from employee_info;
select avg(emp_salary) as average_salary from employee_info;
select count(emp_id) as total_employees from employee_info;

select sum(emp_salary) as total_salary_of_city from employee_info where emp_city='kolhapur';

--1. Find employees whose salary is greater than the average salary
select * from employee_info where emp_salary>(select avg(emp_salary) from employee_info);

--2 Employees with the minimum salary
select min(emp_salary) as minimum_salary from employee_info;

SELECT * 
FROM employee_info 
WHERE emp_salary = (SELECT MIN(emp_salary) FROM employee_info);

--3 Employees from the same city as the highest-paid employee


--group by and having clause
--Find departments where the average salary is greater than 50,000

select emp_department,avg(emp_salary) as average_salary from employee_info
group by emp_department
having avg(emp_salary)>50000

select * from employee_info
-- Find cities that have more than 1 employee
select emp_city,count(*) from employee_info
group by emp_city
having count(emp_city)>1 

--List departments where the total salary is more than 1,00,000

update employee_info
set emp_department='automation'
where emp_id=102

select emp_department,sum(emp_salary) as total_salary from employee_info
group by emp_department
having sum(emp_salary)>100000;

--Find cities where the minimum salary is less than 40,000
select emp_city ,min(emp_salary) from employee_info
group by emp_city
having min(emp_salary)<40000

--Find departments having maximum salary more than 60,000
select emp_department ,max(emp_salary) from employee_info
group by emp_department
having max(emp_salary)>60000;
