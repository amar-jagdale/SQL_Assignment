---======================== SQL  SCRIPT and BATCH  SQL =================================
--++++++++++++++++++++++++ SCRIPT ++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- A SQL Script it is a .sql file or other That Contain SQL Commands to Execute

 

SELECT * from sys.databases;
SELECT * from sys.all_views;
select * from sys.all_objects; 
select * from sys.all_parameters; --- This Queries can run all at a time is also Called as Scripting

-- BATCH is a set of SQL Command that get sent to SQL Server in One Network Packet
-- Go is a Special Command That is "Batch Command"


--- TABLE 1
Create Table Script_A
(
   id int Not null,
   S_Name varchar(20),
   primary key(id)
)

-- Inserting Values into Table 1
insert into Script_A(id,S_Name)values(1,'A')
insert into Script_A(id,S_Name)values(2,'A')
insert into Script_A(id,S_Name)values(3,'A')
insert into Script_A(id,S_Name)values(4,'A')

-- Retrive the Values from Table A
Select * from Script_A

Create Table Script_B
(
   B_id int Not null,
   B_Name varchar(20),
   primary key(B_id)
)

-- Inserting Values into Table 1
insert into Script_B(B_id,B_Name)values(1,'B')
insert into Script_B(B_id,B_Name)values(2,'B')
insert into Script_B(B_id,B_Name)values(3,'B')
insert into Script_B(B_id,B_Name)values(4,'B')

-- Retrive the Values from Table A
Select * from Script_B