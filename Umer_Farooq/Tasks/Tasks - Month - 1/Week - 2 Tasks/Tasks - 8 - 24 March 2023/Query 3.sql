-- Write an SQL query to delete all the rows from a table that have a certain value in a column, 
-- and that meet a certain condition in another column.

SELECT *
INTO NewEmployeeTable
FROM northwind.dbo.Employees;

SELECT * FROM NewEmployeeTable;

-- Deleting Records based on two columns
DELETE FROM NewEmployeeTable
WHERE City = 'London' AND Title = 'Sales Representative';