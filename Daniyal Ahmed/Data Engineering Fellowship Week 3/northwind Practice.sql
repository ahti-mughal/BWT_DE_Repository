SELECT ProductName, UnitPrice, UnitsInStock
FROM Products
WHERE UnitPrice < 20
ORDER BY ProductName;

SELECT OrderID, CustomerID, OrderDate
FROM Orders
WHERE CustomerID IS NULL
ORDER BY OrderDate;

SELECT DISTINCT Categories.CategoryName, Shippers.Country
FROM Categories, Orders, Shippers, OrderDetails
JOIN Products ON OrderDetails.ProductID = Products.ProductID
WHERE Orders.ShipVia = Shippers.ShipperID
AND OrderDetails.OrderID = Orders.OrderID
AND Products.CategoryID = Categories.CategoryID;