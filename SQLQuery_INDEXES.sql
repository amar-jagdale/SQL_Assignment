--===================== INDEXES ==========================---
-- indexes is help us to make the search process faster ---
-- indexes it access values by perticular location --


Create table Employee1
(
	emp_id int,
	emp_fname varchar(75),
	emp_lname varchar(75),
	emp_city varchar(75),
	emp_sal decimal,
	primary key(emp_id)
)

insert into Employee1 (emp_id,emp_fname,emp_lname,emp_city,emp_sal) values(1,'sachin','Jagdale','Sangli',20000)
insert into Employee1 (emp_id,emp_fname,emp_lname,emp_city,emp_sal) values(2,'John','Karan','Mumbai',24000)
insert into Employee1 (emp_id,emp_fname,emp_lname,emp_city,emp_sal) values(3,'Josef','Kumar','Satara',85200)
insert into Employee1 (emp_id,emp_fname,emp_lname,emp_city,emp_sal) values(4,'satish','Mehta','Kolhapur',33000)
insert into Employee1 (emp_id,emp_fname,emp_lname,emp_city,emp_sal) values(5,'Amar','Jagdale','Pune',45000)

select * from Employee1

--- Creation of Index File ---
Create Index IndexEm on Employee1 (emp_id,emp_fname)
sp_helpindex Employee1    --- checking index 
select * from sys.indexes


