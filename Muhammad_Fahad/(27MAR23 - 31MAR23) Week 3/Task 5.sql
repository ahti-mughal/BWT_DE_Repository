USE Northwind;
-- SUB QUERIES --
-- Single Row Sub Query 
SELECT * FROM Employees
WHERE Title = (
  SELECT Title FROM Employees
  WHERE Title = 'Vice President, Sales'
)
SELECT ProductName, UnitPrice, UnitsInStock 
FROM Products
WHERE UnitsInStock = (
    SELECT MAX(UnitsInStock) FROM Products
)

-- Multi Row Sub Query
SELECT * FROM Employees
WHERE Title IN (
  SELECT Title FROM Employees
  WHERE Title = 'Vice President, Sales' OR Title='Sales Manager'
)
ORDER BY EmployeeID ASC;

-- Nested Sub Queries
SELECT *
FROM Orders
WHERE CustomerID IN (
  SELECT CustomerID
  FROM Customers
  WHERE Country IN (
      SELECT Country
      FROM Suppliers
      WHERE ShipCity = 'Berlin'
  )
)

-- Correlated Sub Query
SELECT OrderID, CustomerID  
FROM Orders o  
WHERE 20 < (
  SELECT Quantity                  
  FROM [Order Details] od                                  
  WHERE o.OrderID = od.OrderID AND od.ProductID = 23) 
---------------------------------------------------
--  Views in SQL are database objects that represent saved SELECT queries in “virtual” tables

-- Creating View
GO
CREATE VIEW [Top Avg Products] AS
SELECT TOP 10 ProductName, UnitPrice 
FROM Products
WHERE UnitPrice > (
  SELECT AVG(UnitPrice) FROM Products 
) 
SELECT * FROM [Top Avg Products]

-- ALTER VIEW
GO
ALTER VIEW [Top Avg Products] AS
SELECT TOP 10 ProductName, UnitPrice , CategoryName
FROM Products
INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID
WHERE UnitPrice > (
  SELECT AVG(UnitPrice) FROM Products 
)  
SELECT * FROM [Top Avg Products]

-- DROP VIEW
DROP VIEW [Top Avg Products]; 
----------------------------------------------------------------------
-- Indexes

-- A clustered index is used to define the order or to sort the table or arrange the data by alphabetical order just like a dictionary. It is faster than a non-clustered index.	
CREATE CLUSTERED INDEX idx_Order_ID
ON [Order Details] (OrderID);

-- A non-clustered index collects the data at one place and records at another place. It is slower than a clustered index
CREATE NONCLUSTERED INDEX idx_Customer_LastName
ON Customers (ContactName);

-- Create Index
CREATE INDEX idx_titles ON Customers (ContactTitles);
-- ALTER INDEX
ALTER INDEX idx_titles ON Customers REBUILD;
-- DROP INDEX
DROP INDEX idx_titles ON Customers;
