-- Cross Join (Cartesian Product):

--Cross Join in SQL is a type of join that returns the Cartesian product of the two tables being joined. 
--In other words, it returns all possible combinations of rows from both tables.

-- When you use a cross join, each row from the first table is combined with every row from the second table, 
-- resulting in a result set that contains all possible combinations of rows.

-- == Questions==

-- How many total products would there be if every supplier had every product in their inventory?
SELECT COUNT(*) AS total_products
FROM Products
CROSS JOIN Suppliers;

-- List all possible combinations of categories and territories?
SELECT c.CategoryName, t.TerritoryDescription
FROM Categories AS c
CROSS JOIN Territories AS t

-- What is the total number of orders that could be made if every customer ordered every product?
SELECT COUNT(*) total_orders
FROM Customers
CROSS JOIN Products;


SELECT * FROM Employees;

-- Write a query to display all combinations of customer names and product names, 
-- along with the order date, for each order in the Northwind database.
SELECT c.ContactName, p.ProductName, o.OrderDate
FROM Customers c
CROSS JOIN Products p
CROSS JOIN Orders o
ORDER BY c.ContactName;
