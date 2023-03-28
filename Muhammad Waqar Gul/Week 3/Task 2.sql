-- Query 1
select ProductName, UnitPrice, UnitsInStock from Products where UnitPrice<20 order by ProductName;

-- Query 2
select OrderID, CustomerID,OrderDate from Orders where CustomerId is null order by OrderDate;

-- Query 3
SELECT DISTINCT  Products.ProductName, Categories.CategoryName, orders.ShipCountry
FROM Orders
INNER JOIN [Order Details]
ON Orders.OrderID = [Order Details].OrderID
INNER JOIN Products 
ON Products.ProductID = [Order Details].ProductID
INNER JOIN Categories
ON Categories.CategoryID = Products.CategoryID;