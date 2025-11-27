create database Employees;
use employees;

##creating the Employees Table
create table Emp
(EmpID char(10), 
EmpName varchar(30), 
Department varchar(30),
city varchar(20),
salary int,
HireDate date
);

##Inserting data into Emp table
insert into Emp values
("101","Rahul Metha","sales","Delhi",55000,"2020-04-12"),
("102","Priya Sharma","HR","Mumbai",62000,"2019-09-25"),
("103","Aman Singh","IT","Bengalure",72000,"2021-03-10"),
("104","Neha Patel","sales","Delhi",48000,"2022-01-14"),
("105","Karan Joshi","Marketing","Pune",45000,"2018-07-22"),
("106","Divya Nair","IT","Chennai",81000,"2019-12-11"),
("107","Raj Kumar","HR","Delhi",60000,"2020-05-28"),
("108","Simran Kaur","Finance","Mumbai",58000,"2021-08-03"),
("109","Arjun Reddy","IT","Hyderabad",70000,"2022-02-18"),
("110","Anjali Das","sales","Kolkata",51000,"2023-01-15"); 

select * from Emp;


##Question 1 : Show employees working in either the ‘IT’ or ‘HR’ departments.
select * from Emp 
where department in ('IT','HR');

## Question 2 : Retrieve employees whose department is in ‘Sales’, ‘IT’, or ‘Finance’
select * from Emp
where department in ('Sales','IT','Finance');

## Question 3 : Display employees whose salary is between ₹50,000 and ₹70,000.
select empid,EmpName, salary from Emp
where salary between 50000 and 70000;

## Question 4 : List employees whose names start with the letter ‘A’.
select * from Emp
where EmpName like 'A%';

## Question 5 : Find employees whose names contain the substring ‘an’.
select * from Emp
where EmpName like '%an%';

## Question 6 : Show employees who are from ‘Delhi’ or ‘Mumbai’ and earn more than ₹55,000.
select * from Emp
where city in ('Delhi','Mumbai') and salary > 55000;

## Question 7 : Display all employees except those from the ‘HR’ department.
select * from Emp
where department not in ('HR');

##Question 8 : Get all employees hired between 2019 and 2022, ordered by HireDate (oldest first).
select * from Emp
where HireDate between '2019-01-01' and '2022-12-31'
order by HireDate asc;



