--TASK 5

--Nested Sub Query
--Single Row Sub Query

--Return all customers listed in the orders table who placed orders on the most recently recorded day.

SELECT Orderid, Customerid 
FROM Orders  
WHERE OrderDate =
	(SELECT MAX(OrderDate) FROM Orders);

--Nested Sub Query
--Multiple Row Sub Query
--list of companies that made purchases after the date 1/1/95.

SELECT companyname  
FROM Customers  
WHERE CustomerID 
IN         
	(SELECT CustomerID FROM Orders WHERE OrderDate > '1/1/95');

-- Co-related Sub Queries
-- list of customers who ordered more than 20 items of product number 23 on a single order.

SELECT OrderID, CustomerID  
FROM Orders o  
WHERE 20 < 
	(SELECT Quantity                  
	FROM [Order Details] od                                  
	WHERE o.OrderID = od.OrderID 
	AND od.ProductID = 23); 

-- Co-related Sub Queries with an EXISTS
--list of employees who received orders on 9/2/94.

SELECT LastName, EmployeeID 
FROM Employees e 
WHERE EXISTS (SELECT * FROM Orders     
              WHERE e.EmployeeID = Orders.EmployeeID     
              AND OrderDate = '9/5/97')

--VIEWS
--Creating Views
CREATE VIEW Employee AS
SELECT employeeid, lastname
FROM Employees
WHERE employeeid = 030314;

CREATE VIEW [German Customers] AS
SELECT CompanyName, ContactName
FROM Customers
WHERE Country = 'Germany';

--Altering Views
ALTER VIEW [Top Avg Products] AS
SELECT TOP 10 ProductName, UnitPrice , CategoryName
FROM Products
INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID
WHERE UnitPrice > (
  SELECT AVG(UnitPrice) FROM Products 
)  
SELECT * FROM [Top Avg Products]

--Dropping Views
DROP VIEW [German Customers];

--Indexes
--Clustered Index
CREATE CLUSTERED INDEX idx_Order_ID
ON [Order Details] (OrderID);

--Non Clustered Index
CREATE NONCLUSTERED INDEX idx_Customer_LastName
ON Customers (ContactName);


--Create Index
CREATE INDEX idx_titles ON Customers (ContactTitle);

--Altering Index
ALTER INDEX idx_titles ON Customers REBUILD;

--Drop Index
DROP INDEX idx_titles ON Customers;










