-- Multi Subquery:

--A multi-row subquery is a type of subquery that returns multiple rows of data as its output. 
--It is used to retrieve a set of values that can be compared to a set of values of another table's column or used in other operations.
--This type of subquery is often used in conditional expressions with the IN or ANY operators.

-- ==Questions==

-- Retrieve all customers who have placed orders in the last 30 days
SELECT *
FROM Customers
WHERE CustomerID IN(
	SELECT CustomerID
	FROM Orders
	--WHERE OrderDate BETWEEN DATEADD(day, -30, GETDATE()) AND GETDATE() -- No data will be return as data is old
	WHERE OrderDate BETWEEN'1996-07-01' AND '1999-12-30');

-- Retrieve all products that have not been ordered by any customer
SELECT *
FROM Products
WHERE ProductID NOT IN(
	SELECT ProductID 
	FROM [Order Details]
)

-- What are the names of the customers who have placed orders for products that have been discontinued by the supplier?
SELECT ContactName
FROM Customers c
INNER JOIN Orders o
ON c.CustomerID = o.CustomerID
INNER JOIN [Order Details] od
ON o.OrderID = od.OrderID
WHERE od.ProductID IN(SELECT ProductID FROM Products WHERE Discontinued = 1)

-- Which products have been ordered by customers located in the same city as the supplier that produces the product? 
-- List the product name, supplier name, and customer name for each order.
SELECT DISTINCT p.ProductName, s.CompanyName AS SupplierName, c.ContactName AS CustomerName, c.City
FROM Products p
INNER JOIN Suppliers s ON p.SupplierID = s.SupplierID
INNER JOIN [Order Details] od ON p.ProductID = od.ProductID
INNER JOIN Orders o ON od.OrderID = o.OrderID
INNER JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE c.City = s.City