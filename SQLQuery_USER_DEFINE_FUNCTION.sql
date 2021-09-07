--- ===================== USER DEFINED FUNCTION ========================
-- 1  Sclalar Value Function 
-- This function always returns a scalar value
--=======================================================================

Create Function add_five(@num as int)    --- This is the Parametrized user defined function declaration
RETURNS int
AS
BEGIN
RETURN (
@num+5        -- This function add +5 into the num variable
)
END

-- calling User Define Function
Select dbo.add_five(10)        --- Result=15
Select dbo.add_five(100)      --- Result=105



--======================================================================
-- ++++++++++++++++++++  2  TABLE VALUED FUNCTION   ++++++++++++++++++++
-- There is no Begin and end Keyword 
-- IT is Return The table
-- Required the TABLE for the implmentaion of Table valued  User Defined function
--========================================================================

select * from Student

Create FUNCTION select_gender(@sgender as varchar(20))    --- select_gender is the function name
RETURNS table
AS
RETURN
(
select * from Student where GENDER=@sgender    
)

select * from dbo.select_gender('Male')    -- Returns the only Male from the Table
select * from dbo.select_gender('Female')    -- Returns the only Female from the Table


