-- Select all products that cost less than $20, and order them by product name.
SELECT ProductName, UnitPrice, UnitsInStock
FROM Products
WHERE UnitPrice < 20
ORDER BY ProductName;

-- Select all orders that do not have a customer ID, and order them by order date.
SELECT OrderID, CustomerID, OrderDate
FROM Orders
WHERE CustomerID IS NULL
ORDER BY OrderDate;

-- Select the category names of all products and the countries to which orders have been shipped, without any duplicates.

select * from Orders;

SELECT Distinct Categories.CategoryName, Products.ProductName, orders.ShipCountry
FROM orders
JOIN [Order Details] ON orders.OrderID = [Order Details].OrderID
JOIN Products ON Products.ProductID = [Order Details].ProductID
JOIN Categories ON Categories.CategoryID = Products.CategoryID;

