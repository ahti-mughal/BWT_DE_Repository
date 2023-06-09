--Query to retrieve the names of all products that have been ordered more than 50 times:
SELECT Products.ProductName
FROM Products
INNER JOIN [Order Details] ON Products.ProductID = [Order Details].ProductID
GROUP BY Products.ProductName
HAVING COUNT(*) > 50
ORDER BY Products.ProductName;


--Query to retrieve the names of all products that have been ordered at least once:
SELECT Products.ProductName
FROM Products
INNER JOIN [Order Details] ON Products.ProductID = [Order Details].ProductID
GROUP BY Products.ProductName
HAVING COUNT(*) >= 1
ORDER BY Products.ProductName;


--Creating a view that shows the total revenue generated by each category:
CREATE VIEW CategoryRevenues AS
SELECT Categories.CategoryName, SUM([Order Details].UnitPrice * [Order Details].Quantity * (1 - [Order Details].Discount)) AS Revenue
FROM Categories
INNER JOIN Products ON Categories.CategoryID = Products.CategoryID
INNER JOIN [Order Details] ON Products.ProductID = [Order Details].ProductID
GROUP BY Categories.CategoryName;
