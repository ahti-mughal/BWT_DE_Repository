SELECT ProductName, UnitPrice, UnitsInStock
FROM Products
WHERE UnitPrice < 20
ORDER BY ProductName;

SELECT OrderID, CustomerID, OrderDate
FROM Orders
WHERE CustomerID IS NULL
ORDER BY OrderDate;

SELECT DISTINCT Categories.CategoryName, Shippers.Country
FROM Categories
INNER JOIN Products ON Categories.CategoryID = Products.CategoryID
INNER JOIN OrderDetails ON Products.ProductID = OrderDetails.ProductID
INNER JOIN Orders ON OrderDetails.OrderID = Orders.OrderID
INNER JOIN Shippers ON Orders.ShipVia = Shippers.ShipperID;
