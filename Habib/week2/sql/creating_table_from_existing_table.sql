use HabibDB
-- How to create a new table by using existing table
SELECT * FROM Employee
SELECT * INTO EmployeeN FROM Employee
SELECT * FROM EmployeeN

-- How to create a new table structure without data with existing table
SELECT * INTO TblEmployee FROM Employee
WHERE 1 = 0
SELECT * FROM TblEmployee