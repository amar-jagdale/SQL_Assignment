/*Table Creation #Alter Query Execution #Constraints Use*/

/*NEW TABLE CREATION*/
 /*NOT NULL AND UNIQUE*/
  /*DEFAULT CONATRAINTS*/
   /*CHECK CONSTRAINTS*/
   /*PRIMARY KEY*/

CREATE TABLE EMPLOYEEE
(
	EMP_ID INT NOT NULL UNIQUE,                   
	FIRST_NAME VARCHAR(20),
	LAST_NAME VARCHAR(20) NOT NULL,
	EMP_SALARY DECIMAL(20),
	EMP_COMPANY_NAME VARCHAR(20) DEFAULT 'ZENSAR',  
	CHECK(EMP_SALARY>5000),						  
	PRIMARY KEY(EMP_ID)							   
)

/*ALTER TABLE*/
ALTER TABLE EMPLOYEEE ADD ADDRESS VARCHAR(30)


/*INSERTING VALUES INTO TABLE*/
INSERT INTO EMPLOYEEE(EMP_ID,FIRST_NAME,LAST_NAME,EMP_SALARY,EMP_COMPANY_NAME,ADDRESS) VALUES (1,'DEVID','WARNER',60000,'ZENSAR','PUNE')
INSERT INTO EMPLOYEEE(EMP_ID,FIRST_NAME,LAST_NAME,EMP_SALARY,ADDRESS) VALUES (2,'RAJIV','MEHTA',40000,'PUNE')

 /*FOR THE USING DEFAULT CONSTRAINT NO NEED TO PASSING THE VALUES*/

INSERT INTO EMPLOYEEE (EMP_ID,FIRST_NAME,LAST_NAME,EMP_SALARY,ADDRESS) VALUES (3,'SAM','KARAN',80000,'AUS')
INSERT INTO EMPLOYEEE(EMP_ID,FIRST_NAME,LAST_NAME,EMP_SALARY,ADDRESS) VALUES (4,'ADITYA','CHOPRA',44000,'BANGLORE')
INSERT INTO EMPLOYEEE(EMP_ID,FIRST_NAME,LAST_NAME,EMP_SALARY,ADDRESS) VALUES (5,'AMAR','JAGDALE',40000,'SANGLI')


/*RETRIVE THE DATA FROM EMPLOYEE*/
SELECT * FROM EMPLOYEEE


/*TRUNCATE TABLE*/
TRUNCATE TABLE EMPLOYEE

/*Creating Views*/
Create view viewEMPLOYEEE
AS
SELECT EMP_ID,FIRST_NAME,LAST_NAME,EMP_SALARY,EMP_COMPANY_NAME,ADDRESS FROM EMPLOYEEE

/*Fetching Data from Views*/
SELECT * FROM viewEMPLOYEEE where EMP_ID in (1,2)

/* SQL QUERY FOR  Modifying into the Views*/
/*FETCHING Data from view and Table together*/
select * from viewEMPLOYEEE,EMPLOYEEE where EMP_ID=3

/************ SQL - Modifying Views ************/
/*Inserting values into view*/
insert into viewEMPLOYEEE values(6,'Ajay','Jagdale',50000,'zensar','Sangli')
select * from EMPLOYEEE

/******Updating Values into views*****/
update viewEMPLOYEEE set FIRST_NAME='Atul' where FIRST_NAME='RAJIV'
SELECT * FROM EMPLOYEEE WHERE FIRST_NAME='Atul'


/******** Deleting values from view ******/
Delete from viewEMPLOYEEE where FIRST_NAME='Ajay'

/*We can also use Drop query in views*/

Select * from viewEMPLOYEEE
select * from EMPLOYEEE

select * from Department





















































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































																																								  																																								   																																								   																																								  																																																																															 																																							 																																																																													  																																						   																																						   																																						  																																																																											 																																					 																																																																									  																																				   																																				   																																				  																																																																							 																																			 																					  																																								   																																								   																																								  																																																																															 																																							 																																																																													  																																						   																																						   																																						  																																																																											 																																					 																																																																									  																																				   																																				   																																				  																																																																							 																																			 																																			