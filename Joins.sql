create table students
(
	studentid int primary key,
	studentname varchar(50) not null
)
insert into students(studentid,studentname)
values(1,'ashutosh'),
(2,'sahil'),
(3,'saurabh'),
(4,'harsh'),
(5,'abhi');

insert into students values
(7,'priya'),
(8,'nisha')

create table enrollments
(
	studentid int ,
	coursename varchar(50) not null,
	enrollmentid int not null
)

insert into enrollments(studentid,coursename,enrollmentid)
values(1,'java',101),
(2,'devops',102),
(3,'web',103),
(4,'python',104),
(5,'kubernetes',105)

insert into enrollments
values(6,'selenium','106'),
(9,'testng',109);

select * from students
select * from enrollments

select s.studentname,e.coursename from students as s
inner join enrollments as e
on s.studentid=e.studentid;

select s.studentname,e.coursename from students as s
full outer join enrollments as e
on s.studentid=e.studentid;

select s.studentname,e.coursename from students as s
right join enrollments as e
on s.studentid=e.studentid;

create table employeetable
(
	emp_id int ,
	emp_name varchar(50),
	manager_id int 
);
insert into employeetable 
values(1,'agni',3),
(2,'akash',4),
(3,'dharti',2),
(4,'vayu',3)



drop table employeetable;
select * from employeetable
select t1.emp_name as employee_name,t2.emp_name as manager_name from employeetable as t1
join employeetable as t2
on t2.emp_id=t1.manager_id