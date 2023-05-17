--Select
SELECT * FROM Categories

--Where clause
SELECT * FROM Employees
WHERE City = 'London'

--Order by clause
SELECT * FROM Products
ORDER BY SupplierID

--Distinct
SELECT DISTINCT CategoryID FROM Products

--ISNULL()
SELECT FirstName, LastName, ISNULL(Region, 'N/A') as 'Region' FROM Employees

--Column Aliases
SELECT CustomerID as cust_id, EmployeeID as emp_id, OrderID FROM Orders

--Between ... And
SELECT * FROM Orders
WHERE OrderDate BETWEEN '1997-07-05' AND '1997-07-25'

--In
SELECT * FROM Customers
WHERE City IN ('London', 'Strasbourg',  'México D.F.')

--LIKE
SELECT * FROM Customers
WHERE CompanyName LIKE 'La%'

--IS NULL
SELECT * FROM Orders
WHERE ShippedDate IS NULL


--Top n Clause 
SELECT TOP 5 * FROM Orders
Order By OrderDate

SELECT TOP 1 PERCENT * FROM Orders
----------------Set Operators---------------

--Union
SELECT CompanyName, ContactName, ContactTitle FROM Customers
UNION
SELECT CompanyName, ContactName, ContactTitle FROM Suppliers

--Intersect


--Except
--Get customer ids of customers who have not placed any orders
SELECT CustomerID
FROM Customers

EXCEPT

SELECT CustomerID
FROM Orders;

