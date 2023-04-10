/*Task 1 - 
Data Query Language (DQL):
     • select      • Where clause     • Order By Clause     • Distinct Keyword
     • Isnull() function     • Column aliases     • Predicates
     		- Between ... And
     		- In
     		- Like
     		- Is Null
     • Top n Clause
     • Set Operators
     		- Union
     		- Intersect
     		- Except */
use Northwind
--Select
SELECT * FROM Customers
SELECT CompanyName,ContactName,Country FROM Customers;

--Where clause
SELECT * FROM Customers where country='Germany'
SELECT CompanyName,ContactName,Country FROM Customers where country='Germany';

--Order By Clause
SELECT * FROM Customers order by CustomerID; --add desc for descending order

--Distinct Keyword
SELECT Distinct Country FROM Customers;

--Isnull() function
SELECT ISNULL(Region, 'Isb') AS NewRegion FROM Customers;
--ISNULL function returns the first argument if it is not null, otherwise it returns the second argument. The resulting column will be named "NewRegion". 

--Column aliases
SELECT ContactName AS POC, ContactTitle AS Designation, City AS Area FROM Customers;

-- Between ... And
SELECT * FROM Products
SELECT * FROM Products WHERE ProductName BETWEEN 'Aniseed Syrup' AND 'Ikura'; -- alphabetically between 'Aniseed Syrup' and 'Ikura'. 
SELECT * FROM Employees
SELECT FirstName, City, Extension  FROM Employees WHERE Extension BETWEEN 500 AND 5800;

--In
SELECT City, Extension FROM Employees WHERE Extension IN (5467,3457,428)
SELECT ProductID,ProductName, UnitPrice FROM Products WHERE ProductName IN ('Aniseed Syrup','Ikura');
SELECT ProductID,ProductName, UnitPrice, CategoryID FROM Products WHERE CategoryID IN (1,2 ,6);

--Like
SELECT FirstName,Title FROM Employees WHERE  Title Like 'Sales Representative';
SELECT FirstName,Title FROM Employees WHERE  Title= 'Sales Representative';
/*Difference btw LIKE and "=" :
LIKE will retrieve all the rows where the Title column contains the exact string 'Sales Representative',
regardless of any other characters that may appear before or after it. 
It will match 'Inside Sales Representative' or 'Sales Representative - West', but not 'Senior Sales Executive'.
the equality operator "="  is an exact match and will retrieve only the rows where the Title column is exactly equal to the string 'Sales Representative', 
with no other characters before or after it. 
*/
--Is Null
SELECT CompanyName, City FROM Customers WHERE Region IS NULL;

--TOP n things
SELECT TOP 5 FirstName,City FROM Employees ORDER BY EmployeeID DESC;

SELECT * FROM Customers

-- Union
SELECT FirstName As F_NAme FROM Employees UNION SELECT ContactName As C_Name FROM Customers; --use the UNION ALL operator instead of UNION to include duplicates

--Intersect
SELECT EmployeeID FROM Employees INTERSECT SELECT EmployeeID FROM EmployeeTerritories;
--retrieves the EmployeeID column from the "Employees" table and returns only the EmployeeIDs that are present in both the "Employees" and "EmployeeTerritories" tables, using the INTERSECT operator.

--Except
SELECT FirstName As F_NAme FROM Employees EXCEPT SELECT ContactName As C_Name FROM Customers;
--retrieves the first names of employees from the "Employees" table and returns only those names that are not present in the contact names of customers from the "Customers" table, using the EXCEPT operator.