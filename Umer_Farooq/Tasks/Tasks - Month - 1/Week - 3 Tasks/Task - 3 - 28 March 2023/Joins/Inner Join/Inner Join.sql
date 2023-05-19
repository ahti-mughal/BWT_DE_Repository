-- Inner Join:

-- The inner join returns only the rows that have matching values in both tables based on a common column.
-- The matching values are determined by a common column between the tables.
-- The common column used for joining should have the same data type in both tables. 

-- Questions:

-- Which products have been ordered by customers in France?
SELECT ProductName, ContactName, c.Country
FROM Products as p
INNER JOIN [Order Details] as od
ON p.ProductID = od.ProductID
INNER JOIN Orders as o
ON od.OrderID = o.OrderID
INNER JOIN Customers as c
ON o.CustomerID = c.CustomerID
WHERE c.Country = 'France';

-- Which suppliers provide products that have been ordered by customers?
SELECT s.CompanyName, s.ContactName, p.ProductName, c.ContactName
FROM Suppliers AS s
INNER JOIN Products As p
ON s.SupplierID = p.SupplierID
INNER JOIN [Order Details] as od
ON p.ProductID = od.ProductID
INNER JOIN Orders as o
ON od.OrderID = o.OrderID
INNER JOIN Customers as c
ON o.CustomerID = c.CustomerID;

-- Which employees have created orders for products that are in the "Beverages" category?
SELECT o.OrderID, e.FirstName+' '+LastName AS Employee, ProductName, CategoryName
FROM Categories c
INNER JOIN Products p
ON c.CategoryID = p.CategoryID
INNER JOIN [Order Details] od
ON p.ProductID = od.ProductID
INNER JOIN Orders o
ON od.OrderID = o.OrderID
INNER JOIN Employees e
ON o.EmployeeID = e.EmployeeID
WHERE c.CategoryName = 'Beverages';

