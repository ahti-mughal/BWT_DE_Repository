<<<<<<< HEAD
CREATE TABLE employees (
	Emp_ID INT IDENTITY(0,1),
	First_Name VARCHAR(25),
	Last_Name VARCHAR(25),
	City VARCHAR(25),
	Country VARCHAR(25)
); 

SELECT EmployeeID, FirstName, LastName, City, Country 
INTO db_employee
FROM Northwind.dbo.Employees
WHERE 1=0;

INSERT INTO db_employee 
SELECT FirstName, LastName, City, Country
FROM Northwind.dbo.Employees; 

-- UPDATE
UPDATE db_employee
SET Country = 'United Kingdom'
WHERE Country = 'UK';

UPDATE db_employee
SET Country = 'United States'
WHERE Country = 'USA'; 

-- DELETE & TRUNCATE
TRUNCATE TABLE db_employee; 

DELETE FROM db_employee 
WHERE Country = 'UK';

-- DELETE Statement is used to delete existing record from table with conditions
-- TRUNCATE Statement is used to delete data within the table. Structure of table will remain but data within table gets erased







=======
CREATE TABLE employees (
	Emp_ID INT IDENTITY(0,1),
	First_Name VARCHAR(25),
	Last_Name VARCHAR(25),
	City VARCHAR(25),
	Country VARCHAR(25)
); 

SELECT EmployeeID, FirstName, LastName, City, Country 
INTO db_employee
FROM Northwind.dbo.Employees
WHERE 1=0;

INSERT INTO db_employee 
SELECT FirstName, LastName, City, Country
FROM Northwind.dbo.Employees; 

-- UPDATE
UPDATE db_employee
SET Country = 'United Kingdom'
WHERE Country = 'UK';

UPDATE db_employee
SET Country = 'United States'
WHERE Country = 'USA'; 

-- DELETE & TRUNCATE
TRUNCATE TABLE db_employee; 

DELETE FROM db_employee 
WHERE Country = 'UK';

-- DELETE Statement is used to delete existing record from table with conditions
-- TRUNCATE Statement is used to delete data within the table. Structure of table will remain but data within table gets erased







>>>>>>> 49d7ad174ac698221d6820b90a6b15110095bc4e
