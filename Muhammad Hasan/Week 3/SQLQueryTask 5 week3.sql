--Week3 Task # 5 

--1 - Sub Queries:
--     • Single Row Sub Queries
--     • Multi Row Sub Queries
--     • Nested Sub Queries
--     • Co-Related Sub Queries


-- 1 Example:
SELECT ProductName,(select AVG(UnitsInStock) from Products) as average_stock
from Products

-- 2 Example:
SELECT ProductName, UnitsOnOrder
from Products
where UnitsOnOrder = (select MAX(UnitsOnOrder) from Products)


--Multi Row Sub Queries

--1 Example:
SELECT customerid
FROM orders
WHERE customerid IN (SELECT customerid FROM orders WHERE orderdate >= DATEADD(month, -100, GETDATE()));

-- 2 Example:
SELECT ProductName, UnitsOnOrder
from Products
where UnitsOnOrder in (select UnitsOnOrder from Products where UnitsOnOrder = (UnitsOnOrder))


--correlated Sub Queries 

SELECT *
FROM Customers c
WHERE EXISTS (
   SELECT *
   FROM Orders o
   WHERE o.CustomerID = c.CustomerID
   AND o.ShipCountry = 'UK'
)

--Nested Sub Queries

SELECT *
FROM Orders o
WHERE o.OrderID IN (
   SELECT OrderID
   FROM [Order Details]
   WHERE ProductID = 7
)

--2 - Views:
--     • Purpose Of Views
--     • Creating , Altering and Dropping Views
--     • Simple and Complex Views

--Purpose of Views

/* The purpose of views is to simplify queries and to
provide a layer of security by allowing users to access
data without directly accessing the underlying tables.
In addition, views can be used to provide a customized view 
of the data, by including only the columns that are required, 
and by defining computed columns or filtering criteria.*/

--===== Simple Views =====

--===== Creating Views =====

CREATE VIEW CategorySales AS 
SELECT c.CategoryName, SUM(od.Quantity*od.UnitPrice) AS TotalSales
FROM Categories c
INNER JOIN Products p ON c.CategoryID = p.CategoryID
INNER JOIN [Order Details] as od ON p.ProductID = od.ProductID
GROUP BY c.CategoryName;


--===== Altering Views =====

ALTER VIEW CategorySales AS
SELECT c.CategoryName, SUM(od.Quantity*od.UnitPrice*1.1) AS TotalSales
FROM Categories c
INNER JOIN Products p ON c.CategoryID = p.CategoryID
INNER JOIN [Order Details] od ON p.ProductID = od.ProductID
GROUP BY c.CategoryName;


--===== Drop Views =====

DROP VIEW CategorySales;


--===== Complex Views =====

CREATE VIEW TopCustomers AS
SELECT c.CustomerID, c.CompanyName, COUNT(o.OrderID) AS TotalOrders, SUM(od.Quantity*od.UnitPrice) AS TotalSales
FROM Customers c
INNER JOIN Orders o ON c.CustomerID = o.CustomerID
INNER JOIN [Order Details] od ON o.OrderID = od.OrderID
WHERE o.OrderDate BETWEEN '1998-01-01' AND '1998-12-31'
GROUP BY c.CustomerID, c.CompanyName
HAVING COUNT(o.OrderID) > 10 AND SUM(od.Quantity*od.UnitPrice) > 10000;


--Index


select * from Orders
--Clustered Create Index

CREATE CLUSTERED INDEX IX_Orders_OrderID ON Orders (OrderID);

--NonClustered Create Index

CREATE NONCLUSTERED INDEX IX_Customers_ContactName ON Customers (ContactName);


--Alter Indexes

ALTER INDEX IX_Customers_ContactName ON Customers
ADD (City VARCHAR(20));

-- Drop Indexes

DROP INDEX IX_Orders_OrderID ON Orders;

-- Using Indexes 
SELECT *
FROM Customers WITH(INDEX(IX_Customers_ContactName))
WHERE ContactName LIKE 'M%';