--- ================ JOIN THE TWO TABLE ===============================
---- TABLE 1
select * from SAMS

---- TABLE 2
select * from Vendor

--- JOIN QUERY ----
select IName,VName from sams,Vendor where sams.vcode=vendor.vcode
-----     OR ---------
select IName,VName from sams s,Vendor v where s.vcode=v.vcode


--- ===================== INNER JOIN ======================================== -----
-- INNER Join Keyword returns the rwos when there is at least one match in both table
select Sams.Icode,Sams.IName,Vendor.Vcode
from Sams
INNER JOIN Vendor
on Sams.Vcode=Vendor.Vcode
ORDER BY Sams.Icode


--- ===================== LEFT JOIN ======================================== -----
--- Left Join Keyword returns all rows from the left table even if there are no matches in the right table
select Sams.IName, Sams.Color,Vendor.VName
from Sams
LEFT JOIN Vendor
on Sams.Vcode=Vendor.Vcode


--- ===================== RIGHT JOIN ======================================== -----
--- This Keyword Returns all the rows from the right table, even if there are no matches in the left table 
select Sams.Price, Sams.IName, vendor.VName
from Sams
Right JOIN Vendor
on Sams.Vcode=Vendor.Vcode


--- ===================== FULL JOIN ======================================== -----
--- The full JOIN Keyword return rows when there is a match in one of the table
select Sams.Icode, Sams.IName, Vendor.VName
from Sams
FULL JOIN Vendor
on Sams.VCode=Vendor.Vcode