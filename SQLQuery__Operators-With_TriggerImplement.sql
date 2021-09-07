/********----------Implementation Arithmetic Operators----------**********/
using Operators
Go
Create Database Operators


--Create Table for implementing Operators--
Create Table Person
(
	P_Id int Not Null,
	FirstName Varchar(75),
	LastName varchar(75),
	Address varchar(75),
	City varchar(75)
	Primary Key(P_Id)
)

-- Inserting Values into Table
Insert into Person(P_Id,FirstName,LastName,Address,City)values(1,'Hansen','Paten','Borgvn','Sandes')
Insert into Person(P_Id,FirstName,LastName,Address,City)values(2,'Sachin','Patil','Karad','Satara')
Insert into Person(P_Id,FirstName,LastName,Address,City)values(3,'Amar','Jagdale','Ambak','Sangli')
Insert into Person(P_Id,FirstName,LastName,Address,City)values(4,'Atul','Jagdale','Nerul','Sabgli')
Insert into Person(P_Id,FirstName,LastName,Address,City)values(5,'James','Goslin','Denmark','Sandes')

-- Retrive data From Table
Select * from Person

--Oeury For Updating Perticular Values in the Colomn
update Person set Address='Nerul' where FirstName='Atul'

--This Query Shows Top 2 Records
Select Top 2 *from Person
Select Top 50 Percent * from Person

-----********* Like Operators *******------
select * from Person where City Like 's%' 
select * from Person where City Like '%s' 
select * from Person where City Like '%tar%' 

--IN Operators ------
Select * from Person where LastName in ('Jagdale', 'Patil')

-- Between , AND Operator ---
select * from Person where Address Between 'karad' and 'Nerul'  --- Print Two Rows of Karad and Nerul

-- Add New Colomn into Table
alter table Person Add Salary decimal

-- Updating The Values into Salary Colomn-----
update Person set Salary=22000 where FirstName='Hansen'
update Person set Salary=24000 where FirstName='Sachin'
update Person set Salary=50000 where FirstName='Amar'
update Person set Salary=60000 where FirstName='Atul'
update Person set Salary=10000 where FirstName='James'

Select * from Person

---Operators----
select * from Person where salary>50000
select * from Person where salary<4000
select * from Person where salary <>20000 --    <> means Not Equal to
select * from Person where salary >=20000 and City='Sangli'
select * from Person where LastName='Goslin' or LastName='Patil' or FirstName='Atul'

----- ============ TRIGGER___Implementation-============

create Trigger TrigDelete
on Person
for Delete
as 
Print 'Deletion of Person is Not allowed'
rollback transaction
return

/*****8**** Check whether deleted or not ********/
delete from Person where FirstName= 'Amar'
Select * from Person
