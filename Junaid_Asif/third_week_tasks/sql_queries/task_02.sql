USE NORTHWND;

SELECT * FROM Products;

--Retrieve the product name, unit price, and units in stock of all products that cost less than $20, ordered by product name

SELECT ProductName, UnitPrice, UnItsinStock
FROM Products
WHERE UnitPrice < 20
ORDER BY ProductName;

SELECT * FROM Orders;

--Retrieve the order ID, customer ID, and order date of all orders that do not have a customer ID, ordered by order date

SELECT OrderID, CustomerID, OrderDate
FROM Orders
WHERE CustomerID IS NULL
ORDER BY OrderDate;

--Retrieve the category names of all products, as well as the countries to which orders have been shipped, without any duplicates

SELECT DISTINCT CategoryName, ShipCountry FROM Categories, Products, [Order Details], Orders
WHERE Products.ProductID = [Order Details].ProductID
AND [Order Details].OrderID = Orders.OrderID AND Products.CategoryID = Categories.CategoryID;

