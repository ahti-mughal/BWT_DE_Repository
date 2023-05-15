
                      --Week 03, Day 8, Task 01--      
use northwind;

 --Selecting table names from northwind database--
SELECT TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE';

 --selecting all records from specific tables--
SELECT * FROM ORDERS;
SELECT * FROM PRODUCTS;
SELECT * FROM EMPLOYEES;
SELECT * FROM CATEGORIES;

 --Where Clause--
SELECT * FROM ORDERS WHERE ORDERID = 10250;
SELECT * FROM EMPLOYEES WHERE CITY = 'LONDON';

 --Order by Clause--
SELECT ORDERID, CUSTOMERID, EMPLOYEEID FROM ORDERS ORDER BY ORDERID;
SELECT ORDERID, CUSTOMERID, EMPLOYEEID FROM ORDERS ORDER BY EMPLOYEEID;

 --Distinct(Unique) Keyword--
SELECT DISTINCT ProductID, ProductName FROM PRODUCTS;
SELECT DISTINCT ORDERID, CUSTOMERID FROM ORDERS;
 
 --Isnull() Function to check whether an expression is null or not--
Select EmployeeID, ReportsTo FROM EMPLOYEES WHERE ReportsTo is null;
SELECT EmployeeID, FirstName, ISNULL(ReportsTo, 0) AS ReportsTo FROM EMPLOYEES;

 --Column aliasis--
SELECT FirstName AS Name, Address AS Employee_Address FROM Employees;
SELECT CategoryID AS ID, CategoryName AS C_Name FROM Categories;
 
  --Predicates Conditions--

 --Between ..and
SELECT * FROM Employees WHERE EmployeeID BETWEEN 7 AND 9;
SELECT * FROM Orders WHERE OrderID BETWEEN 10254 AND 10299;
--In
SELECT * FROM Customers WHERE Country IN ('USA', 'Canada', 'Mexico');

--Like
SELECT * FROM Orders WHERE ShipCity LIKE 'a%';
SELECT * FROM Orders WHERE ShipCity LIKE '%a';
SELECT * FROM Orders WHERE CustomerID LIKE '%a%';

--Is Null
SELECT * FROM Customers WHERE ContactName IS NULL;

--Top n Clause
SELECT TOP 10 * FROM Customers;

--Union
SELECT City, Country FROM Customers WHERE Country = 'USA' UNION SELECT City, Country FROM Customers WHERE Country = 'Canada';

--Intersect
SELECT City, Country FROM Customers WHERE Country = 'USA'
INTERSECT SELECT City, Country FROM Orders
WHERE OrderDate BETWEEN '1997-01-01' AND '1997-12-31';

--Except
SELECT City, Country FROM Customers
WHERE Country = 'USA'
EXCEPT SELECT City, Country FROM Orders
WHERE OrderDate BETWEEN '1997-01-01' AND '1997-12-31';
