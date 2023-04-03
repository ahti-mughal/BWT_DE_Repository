Use Northwind
--1 Retrieve the product name, unit price, and units in stock of all products that cost less than $20, ordered by product name.
SELECT ProductName, UnitPrice, UnitsInStock FROM Products WHERE UnitPrice < 20 ORDER BY ProductName ; 

--2 Retrieve the order ID, customer ID, and order date of all orders that do not have a customer ID, ordered by order date.
SELECT * FROM Orders;
SELECT OrderID, CustomerID, OrderDate FROM Orders WHERE CustomerID IS NULL ORDER BY OrderDate;

--3 Retrieve the category names of all products, as well as the countries to which orders have been shipped, without any duplicates.
SELECT * FROM Categories;
SELECT * FROM [Order Details];
SELECT DISTINCT Categories.CategoryName, Orders.ShipCountry
FROM Categories, Products, [Order Details], Orders WHERE Categories.CategoryID = Products.CategoryID 
AND Products.ProductID = [Order Details].ProductID AND [Order Details].OrderID = Orders.OrderID;

