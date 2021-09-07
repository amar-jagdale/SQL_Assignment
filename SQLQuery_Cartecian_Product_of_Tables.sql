--- ================== CARTICIAN PRODUCT ========================
-- Carticial Product is When Data is fetch from Two Table without Condition Join to the Table 

----- EXAMPLE of CARTICIAN PRODUCT ----
------ WE CREATE TWO TABLE ------------

----- TABLE 1
Create Table SAMS
(
	Icode int not null,
	IName varchar (20),
	Price decimal,
	Color varchar(20),
	Vcode VARCHAR(20),
	PRIMARY KEY(Icode)
)

insert into SAMS(Icode,IName,Price,Color,Vcode) values(101,'Refrigerator',20000,'Blue','P01')
insert into SAMS(Icode,IName,Price,Color,Vcode) values(102,'Mobile_Phone',30000,'White','P02')
insert into SAMS(Icode,IName,Price,Color,Vcode) values(103,'LCD',55000,'Yellow','P03')
insert into SAMS(Icode,IName,Price,Color,Vcode) values(104,'Washing_Machine',45202,'Smoke','P04')

select * from SAMS


--- TABLE 2
Create Table VENDOR
(
	Vcode varchar(20) not null,
	VName varchar (20),
)

insert into VENDOR(Vcode,VName) Values('P01','SATISH')
insert into VENDOR(Vcode,VName) Values('P02','MANOJ')
insert into VENDOR(Vcode,VName) Values('P03','SUBODH')

SELECT * FROM VENDOR


--- cartecian product ----- query-------
SELECT Iname, VName from SAMS,VENDOR;   --- This is the result of Cartecian Product
SELECT VName, Color from SAMS,VENDOR;   --- This is the result of Cartecian Product