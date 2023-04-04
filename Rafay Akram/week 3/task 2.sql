-- Retrieve the product name, unit price, and units in stock of all products that cost less than $20, ordered by product name:

SELECT ProductName, UnitPrice, UnitsInStock
FROM Products
WHERE UnitPrice < 20
ORDER BY ProductName;

--Retrieve the order ID, customer ID, and order date of all orders that do not have a customer ID, ordered by order date:
SELECT OrderID, CustomerID, OrderDate
FROM Orders
WHERE CustomerID IS NULL
ORDER BY OrderDate;

--Retrieve the category names of all products, as well as the countries to which orders have been shipped, without any duplicates:
SELECT DISTINCT Categories.CategoryName, ShipCountry
FROM Products
INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID
INNER JOIN "Order Details" ON Products.ProductID = Order Details.ProductID
INNER JOIN Orders ON Order Details.OrderID = Orders.OrderID;
