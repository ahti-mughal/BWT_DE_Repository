																	--TASK 05

SELECT OrderID,UnitPrice
FROM [Order Details]
WHERE UnitPrice = (SELECT MAX(UnitPrice) FROM [Order Details])

SELECT *
FROM Customers
WHERE CustomerID IN (SELECT CustomerID FROM Orders WHERE YEAR(OrderDate) = 1997)

SELECT OrderID
FROM [Order Details]
WHERE OrderID IN (SELECT OrderID FROM Orders WHERE CustomerID IN (SELECT CustomerID FROM Orders GROUP BY CustomerID HAVING COUNT(*) > 2))

SELECT *
FROM Orders O
WHERE O.ShipCountry = (SELECT C.Country FROM Customers C WHERE C.CustomerID = O.CustomerID)

--view
CREATE VIEW orders_customers as
SELECT O.OrderID, C.CompanyName, O.OrderDate, O.ShippedDate
FROM Orders O
JOIN Customers C ON O.CustomerID = C.CustomerID;

ALTER VIEW orders_customers AS
SELECT O.OrderID, C.CompanyName, O.OrderDate, O.ShippedDate
FROM Orders O
JOIN Customers C ON O.CustomerID = C.CustomerID
WHERE O.ShipCountry = 'USA';

DROP VIEW orders_customers;

select * from orders_customers

-- Create a complex view of top customers and their total sales
CREATE VIEW TopCustomers AS
SELECT C.CustomerID, C.CompanyName, SUM(OD.UnitPrice * OD.Quantity) AS TotalSales
FROM Customers C
JOIN Orders O ON C.CustomerID = O.CustomerID
JOIN [Order Details] OD ON O.OrderID = OD.OrderID
GROUP BY C.CustomerID, C.CompanyName
HAVING SUM(OD.UnitPrice * OD.Quantity) > 10000;

-- Select from the view to retrieve the top customers
SELECT *
FROM TopCustomers;

-- Create a clustered index on the OrderDetails table using the primary key
CREATE CLUSTERED INDEX PK_OrderDetails ON [Order Details] (OrderID, ProductID);

-- Create a non-clustered index on the Customers table
CREATE NONCLUSTERED INDEX IX_Customers_ContactName ON Customers (ContactName);

-- Create a non-clustered index on the Products table
CREATE INDEX IX_Products_CategoryID ON Products (CategoryID);

-- Alter the index to include the UnitPrice column
ALTER INDEX IX_Products_CategoryID ON Products ADD (UnitPrice);

-- Drop the index
DROP INDEX IX_Products_CategoryID ON Products;

																--TASK 06

select * from Products p where ProductID in (select ProductID from [Order Details] group by ProductID having count(*)>50 )

select * from Products where ProductID in(select ProductID from [Order Details])

CREATE VIEW CategoryRevenue AS
SELECT c.CategoryName, SUM(od.UnitPrice * od.Quantity) AS TotalRevenue
FROM Categories c
JOIN Products p ON c.CategoryID = p.CategoryID
JOIN [Order Details] od ON p.ProductID = od.ProductID
GROUP BY c.CategoryName;


















