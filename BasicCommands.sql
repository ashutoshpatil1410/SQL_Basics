
create table student
(
	roll_no int primary key,
	Student_name varchar(50) not null,
	email_id varchar(50) unique not null,
	city varchar(50) not null
);

insert into student
values(1,'ashutosh','ashutoshpatil@gmail.com','konavade');

insert into student 
values(2,'sahil','sahilpatil@gmail.com','satara'),
(3,'harsh','harshpatil@gmail.com','shirala'),
(4,'saurabh','saurabhpatil@gmail.com','kolhapur'),
(5,'aryan','aryanpatil@gmail.com','konavade'),
(6,'gaurav','gauravpatil@gmail.com','satara'),
(7,'priyanka','priyankashewale@gmail.com','shirala'),
(8,'abhi','abhikumbhar@gmail.com','varana'),
(9,'sahil','sahilpatilncc@gmail.com','varana')

select * from student;

update student 
set Student_name='akshya', email_id='akshyamore@gmail.com'
where roll_no=9;

delete from student
where roll_no=5;

select Student_name,email_id from student where roll_no=1;

alter table student
add mark int;

update student
set mark=94
where roll_no=4;

alter table student 
drop column mark;

EXEC sp_rename 'student.Student_name', 'student_name', 'COLUMN';

alter table student
alter column student_name varchar(100);


--where clause===================================
select * from student;
select student_name,city from student where city='satara';

--order_by  
select roll_no,student_name,email_id from student order by roll_no desc;--descending order
select roll_no,student_name,email_id from student order by roll_no; --ascending order


--Like operator 
select student_name,city from student where city like 'var___';
select student_name,city from student where city like '%a';
select student_name,city from student where city like 's%';
select student_name,city from student where city like '[k,v]%';
select student_name,city from student where city like '_a%';

--Rename or change database and tablename
--no direct way to change db name just dump method is there
create table qk
(
	empid int,
	emp_name varchar(50)
);
insert into qk
values(1,'ashutosh'),
(2,'aditya')

select * from qualitykiosk;
exec sp_rename 'qk.empid','employeeid','column';

exec sp_rename 'qk','qualitykiosk';