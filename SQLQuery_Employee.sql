use Emp
Go
create database Emp;                 /***** Creating DatabASE *****/

/***** TABLE CREATION OF Employee****/
create table Employee
(
	EMPID INT IDENTITY (1,1)NOT NULL,
	FirstNAME VARCHAR(75)NOT NULL,
	LastNAME VARCHAR(75) NOT NULL,
	SALARY DECIMAL(15,2) NOT NULL,
	PRIMARY KEY(EMPID)
)

/*** Alter Table */
alter table Employee Add status varchar(20)

alter table Employee Add DEPARTMENTID int

/* INSERTING VALUES INTO TABLE*/

INSERT INTO Employee(FirstNAME,LastNAME,SALARY,status) VALUES('SAM','KARAN',30000,'Active'); /*Cannot insert explicit value for identity column in table 'Employee' when IDENTITY_INSERT is set to OFF.
*/
INSERT INTO Employee(FirstNAME, LastNAME,SALARY,STATUS) VALUES('JOHN','PETERSON',42000,'INACTIVE')
INSERT INTO Employee(FirstNAME, LastNAME,SALARY,STATUS) VALUES('JORGE','BUSH',35000,'INACTIVE')
INSERT INTO Employee(FirstNAME, LastNAME,SALARY,STATUS) VALUES('DINESH','CHOWHAN',22000,'INACTIVE')
INSERT INTO Employee(FirstNAME, LastNAME,SALARY,STATUS) VALUES('RAJIV','TRIPATHI',85000,'ACTIVE')
INSERT INTO Employee(FirstNAME, LastNAME,SALARY,STATUS,DEPARTMENTID) VALUES('LASITH','MALINGA',22000,'ACTIVE',01)
INSERT INTO Employee(FirstNAME, LastNAME,SALARY,STATUS,DEPARTMENTID) VALUES('LASITH','MALINGA',10000,'ACTIVE',02)

/*INSERT INTO Employee(EMPID,FirstNAME,LastNAME,SALARY,STATUS,DEPARTMENTID)VALUES(1,'AMAR','JAGDALE',50000.0,'ACTIVE',03); nOT NECESSARY TO PROVIDE IDENTITY VALUES*/

/*SELECT QUERY FOR RETRIVING THE DATA FROM TABLE*/
SELECT * FROM Employee;

/*Truncate Query*/
Truncate table Employee;
SELECT * FROM Employee; /*after truncate we loss the the FROM THE TABLE*/
SP_HELP EMPLOYEE  /*Help Query shoes the all data regarding the table*/

/*Delete Query*/
Drop table Employee /* DROPP WIL DELETE DATA FROM THE ROW AS WELL AS COMPLETE STRUCTURE OF THE TABLE */
select * from Employee

/*Create Second table as Department*/
Create table Department
(
	DepartmentID int Primary Key,
	DepartmentName varchar(50),
	EmployeeID int
)
/*Inserting Values into Department Table*/

insert into Department(DepartmentID,DepartmentName,EmployeeID) values(1,'IT',101)
insert into Department(DepartmentID,DepartmentName,EmployeeID) values(2,'HR',102)
insert into Department(DepartmentID,DepartmentName,EmployeeID) values(3,'Sales',103)
insert into Department(DepartmentID,DepartmentName,EmployeeID) values(4,'Account',104)


select * from Department


