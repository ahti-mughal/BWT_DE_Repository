--Usage SELECT Select Statement
SELECT * 
FROM Customers

--Usage of WHERE CLAUSE
SELECT * 
FROM Customers
WHERE ContactTitle = 'Owner';

--Usage of DISTINCT Keyword
SELECT DISTINCT Country 
FROM Customers;

--Usage of Aliases/ As
SELECT ContactTitle AS CT, PostalCode AS PC
FROM Customers
WHERE ContactTitle = 'Owner';

--Usage of ISNULL()
SELECT CustomerID, ISNULL(Region, 'Not entered') FROM Customers

--Retrival of First and Last name of Employees 
--from Employees table, in descending order
SELECT FirstName, LastName, TitleOfCourtesy AS TOC
FROM Employees
ORDER BY EmployeeID DESC

--Usage of BETWEEN and AND
SELECT FirstName, LastName
FROM Employees
WHERE EmployeeID BETWEEN 3 AND 7;

--Usage of IN
SELECT FirstName, LastName
FROM Employees
WHERE City IN ('London', 'Redmond', 'Kirkland');

--Usage of LIKE and % wildcard
SELECT FirstName, LastName
FROM Employees
WHERE Country LIKE 'U%';

--All countries names from which employees and customers
SELECT DISTINCT Country
FROM Employees
UNION
SELECT DISTINCT Country
FROM Customers;

--Countries names from which both 
--employees and customers belongs to
SELECT Country
FROM Employees
INTERSECT
SELECT Country
FROM Customers;

--Usage of EXCEPT
SELECT Country
FROM Customers
EXCEPT
SELECT Country
FROM Employees;

--Usage of top n, the statement which is written below will 
--only return first 5 rows from customers table
SELECT TOP 5 *
FROM Customers;
