create database worker;

use worker;

CREATE TABLE worker(
WORKER_ID INT,
first_name VARCHAR(50),
last_name VARCHAR(50),
salary INT,
JOINING_DATE DATETIME,
DEPARMENT VARCHAR(50));

insert into worker (WORKER_ID,first_name,last_name,salary,JOINING_DATE,DEPARMENT) values
(1,'Monika','Arora',100000,'2014-2-20 9:00','HR'),
(2,'Niharika','Verma',80000,'2014-6-11 9:00','Admin'),
(3,'Vishal','Singhal',300000,'2014-2-20 9:00','HR'),
(4,'Amitabh','Singh',500000,'2014-2-20 9:00','Admin'),
(5,'Vivek','Bhati',500000,'2014-6-11 9:00','Admin'),
(6,'Vipul','Diwan',200000,'2014-6-11 9:00','Account'),
(7,'Satish','Kumar',75000,'2014-1-20 9:00','Account'),
(8,'Geetika','Chauhan',9000,'2014-4-11 9:00','Admin');

select * from worker

#1. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME
#Ascending and DEPARTMENT Descending.

select * from worker
order by first_name ASC , DEPARMENT DESC;

#2.Write an SQL query to print details for Workers with the first names “Vipul” and “Satish”
#from the Worker table.
select * from worker
where first_name in ('Vipul','Satish')

#3. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and
#contains six alphabets.
select * from worker
where first_name like '%h'

#4. Write an SQL query to print details of the Workers whose SALARY lies between 1.
select * from worker
where salary between 1 and 100000

#5. Write an SQL query to fetch duplicate records having matching data in some fields of a table.
select * from worker





#6. Write an SQL query to show the top 6 records of a table.
select * from worker 
limit 6 

#7. Write an SQL query to fetch the departments that have less than four people in them.
select * from worker
SELECT DEPARMENT, COUNT(*) AS num_of_people FROM worker
GROUP BY DEPARMENT
HAVING COUNT(*) < 4;


#8. Write an SQL query to show all departments along with the number of people in there.
select * from worker
select DEPARMENT, COUNT(*) as num_of_people from worker
group by  DEPARMENT


#9. Write an SQL query to print the name of employees having the highest salary in each
#department. 
select * from worker
select max(salary) from worker



# school database#
create  database school;

use school;

CREATE TABLE school (
stdID int,
stdname varchar(50),
sex varchar(10),
percentage int,
class int,
sec varchar(10),
stream varchar(10),
DOB date );

insert into school (stdID,stdname,sex,percentage,class,sec,stream,DOB) values

(1001, 'Surekha Joshi', 'Female', 82, 12, 'A', 'Science', '1998-03-08'),
(1002, 'MAAHI AGARWAL', 'Female', 56, 11, 'C', 'Commerce', '2008-11-23'),
(1003, 'Sanam Verma', 'Male', 59, 11, 'C', 'Commerce', '2006-06-29'),
(1004, 'Ronit Kumar', 'Male', 63, 11, 'C', 'Commerce', '1997-11-05'),
(1005, 'Dipesh Pulkit', 'Male', 78, 11, 'B', 'Science', '2003-09-14'),
(1006, 'JAHANVI Puri', 'Female', 60, 11, 'B', 'Commerce', '2008-11-07'),
(1007, 'Sanam Kumar', 'Male', 23, 12, 'F', 'Commerce', '1998-03-08'),
(1008, 'SAHIL SARAS', 'Male', 56, 11, 'C', 'Commerce', '2008-11-07'),
(1009, 'AKSHRA AGARWAL', 'Female', 72, 12, 'B', 'Commerce', '1996-10-01'),
(1010, 'STUTI MISHRA', 'Female', 39, 11, 'F', 'Science', '2008-11-23'),
(1011, 'HARSH AGARWAL', 'Male', 42, 11, 'C', 'Science', '1998-03-08'),
(1012, 'NIKUNJ AGARWAL', 'Male', 49, 12, 'C', 'Commerce', '1998-06-28'),
(1013, 'AKRITI SAXENA', 'Female', 89, 12, 'A', 'Science', '2008-11-23'),
(1014, 'TANI RASTOGI', 'Female', 82, 12, 'A', 'Science', '2008-11-23');


select * from school

#1 To display all the records form STUDENT table. SELECT * FROM school ;

select * from school

#2. To display any name and date of birth from the table STUDENT. SELECT StdName, DOB
#FROM student 

select * from school 
select stdname,DOB from school


#3. To display all students record where percentage is greater of equal to 80 FROM student table.
#SELECT * FROM student WHERE percentage >= 80;

select * from school 
where percentage  >= 80


#4. To display student name, stream and percentage where percentage of student is more than 80
#SELECT StdName, Stream, Percentage WHERE percentage > 80;

select * from school 
select stdName, stream, Percentage from school
where percentage  > 80

#5. To display all records of science students whose percentage is more than 75 form student table.
#SELECT * FORM student WHERE stream = ‘Science’ AND percentage > 75; 

select * from school
where stream = 'science' and percentage > 75



