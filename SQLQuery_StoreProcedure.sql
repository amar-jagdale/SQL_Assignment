/****** ------ STORED PROCEDURER -----*****/

CREATE PROCEDURE spADDDepartment
@departmentid int,				--ID of the Department
@departmentname varchar(75),		--Name of the department
@empid int						--FK Id of Employee from employees table
AS
BEGIN
	--Insert values into department Table
	INSERT INTO dbo.Department
	(DepartmentID,
	DepartmentID,
	Empid)

	values
	(
	@departmentid,
	@departmentname,
	@empid)
End