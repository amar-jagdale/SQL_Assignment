
--================== SQL FUNCTIONS =======================

SELECT REPLACE('SQL Tutorial', 'T', 'M');  --Replace "T" with "M":
SELECT CONCAT('SQL', ' is', ' fun!');
SELECT REPLACE('SQL Tutorial', 'SQL', 'HTML'); --Replace "SQL" with "HTML":
SELECT LOWER('SQL Tutorial is FUN!');          --Lower the string
select GETDATE()

--===========================================================================

Create table Student
(
	Id int Not Null,
	FName varchar(20),
	LName varchar(20),
	Class varchar(20),
	Marks decimal(20),
	Age int,
	Primary Key(Id)
)

Insert into Student(Id,FName,LName,Class,Marks,Age)values(1,'Shardul','Patel','A',90,24);
Insert into Student(Id,FName,LName,Marks,Age)values(2,'Mehak','Gujar',80,23);
Insert into Student(Id,FName,LName,Class,Marks,Age)values(3,'Shreesha','Dubey','B',75,22);
Insert into Student(Id,FName,LName,Class,Marks,Age)values(4,'darshan','Patil','B',60,21);
Insert into Student(Id,FName,LName,Class,Marks,Age)values(5,'Amar','Jagdale','A',84,26);
Insert into Student(Id,FName,LName,Class,Marks,Age)values(6,'Sachin','Vaze','A',78,24);


Select * from Student

--================ FUNCTION =====================
select FName from Student where Class IS Null 
select FName from Student where Class IS Not Null 

--=============== Aggregate Function ==============
select AVG(Marks) from Student
Select COUNT(Age) from Student
select Count(Class) from Student where Class IS Not Null
Select Min(Marks) from Student
Select Max(Marks) from Student
Select SUM(Marks) From Student

