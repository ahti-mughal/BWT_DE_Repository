USE Northwind;

-- Inner Join
SELECT ContactName, Products.ProductName, Customers.City, Orders.ShippedDate, Customers.Phone
FROM Customers
INNER JOIN Orders ON Orders.CustomerID = Customers.CustomerID
INNER JOIN [Order Details] ON Orders.OrderID = [Order Details].OrderID
INNER JOIN Products ON [Order Details].ProductID = Products.ProductID;

SELECT Products.ProductID, Products.ProductName, Categories.CategoryName, Products.UnitPrice, Products.UnitsInStock
FROM Products
INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID

-- Outer Join 
SELECT ContactName, Products.ProductName, Customers.City, Orders.ShippedDate, Customers.Phone
FROM Customers
FULL OUTER JOIN Orders ON Orders.CustomerID = Customers.CustomerID
FULL OUTER JOIN [Order Details] ON Orders.OrderID = [Order Details].OrderID
FULL OUTER JOIN Products ON [Order Details].ProductID = Products.ProductID;

SELECT Products.ProductID, Products.ProductName, Categories.CategoryName, Products.UnitPrice, Products.UnitsInStock
FROM Products
FULL OUTER JOIN Categories ON Products.CategoryID = Categories.CategoryID

-- Left Join
SELECT Customers.ContactName, Customers.City, Products.ProductName, Categories.CategoryName
FROM Customers
LEFT JOIN  Orders ON Customers.CustomerID = Orders.CustomerID
LEFT JOIN [Order Details] ON [Order Details].OrderID = Orders.OrderID
LEFT JOIN Products ON Products.CategoryID = [Order Details].OrderID
LEFT JOIN Categories ON Products.CategoryID = Categories.CategoryID; 


-- Right Join
SELECT Customers.ContactName, Customers.City, Products.ProductName, Categories.CategoryName
FROM Customers
RIGHT JOIN  Orders ON Customers.CustomerID = Orders.CustomerID
RIGHT JOIN [Order Details] ON [Order Details].OrderID = Orders.OrderID
RIGHT JOIN Products ON Products.CategoryID = [Order Details].OrderID
RIGHT JOIN Categories ON Products.CategoryID = Categories.CategoryID; 


-- Self Join
SELECT a.ProductName, a.UnitsInStock, a.UnitPrice
FROM Products a
INNER JOIN Products b 
ON a.UnitPrice > b.UnitPrice 

SELECT a.ProductName, a.UnitsInStock, a.UnitPrice
FROM Products a
INNER JOIN Products b 
ON a.UnitPrice = b.UnitPrice


-- Cross Join
SELECT Products.ProductName, Customers.companyName, Customers.ContactName, Customers.City 
FROM Products 
CROSS JOIN Customers 

SELECT  Shippers.CompanyName, Orders.ShipCountry, Orders.Freight
FROM Shippers
CROSS JOIN Orders;

-- Left anti-Join
SELECT Customers.ContactName, Customers.CompanyName, Orders.ShippedDate
FROM Customers 
LEFT JOIN Orders 
ON Customers.CustomerID = Orders.CustomerID

-- Right anti-Join
SELECT Customers.ContactName, Customers.CompanyName, Orders.ShippedDate
FROM Customers 
RIGHT JOIN Orders 
ON Customers.CustomerID = Orders.CustomerID