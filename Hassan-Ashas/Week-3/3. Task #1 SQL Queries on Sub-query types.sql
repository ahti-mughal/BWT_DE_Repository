-- Single Row Sub Queries
-- Query to select all orders with a freight cost greater than the average freight cost
SELECT * FROM orders
WHERE Freight > (SELECT AVG(Freight) FROM orders);

-- Query to select all products whose UnitPrice is greater than the highest UnitPrice of the 'Seafood' category
SELECT * FROM products
WHERE UnitPrice > (SELECT MAX(UnitPrice) FROM products WHERE CategoryID = (SELECT CategoryID FROM categories WHERE CategoryName = 'Seafood'));

-- Multi Row Sub Queries
-- Query to retrieve Employees with the Same Name as their Manager
SELECT e1.EmployeeID, e1.FirstName, e1.LastName
FROM Employees e1
WHERE e1.FirstName = (
    SELECT e2.FirstName
    FROM Employees e2
    WHERE e2.EmployeeID = e1.ReportsTo
);

-- Query to select all products whose UnitPrice is less than the average UnitPrice of their category
SELECT * FROM products p1
WHERE p1.UnitPrice < 
	(SELECT AVG(p2.UnitPrice) 
	FROM products p2
	WHERE p2.CategoryID = p1.CategoryID);

/* Nested Sub Queries */
-- only one example given, couldn't solve the others :| 
-- Query to select all products whose supplier is located in the same country as their category's description
SELECT * FROM products
WHERE SupplierID IN (SELECT SupplierID FROM suppliers
WHERE Country = (SELECT Country FROM categories
WHERE CategoryID = products.CategoryID));

/* Co-Related Sub Queries */
-- Query to select all employees who joined the company before their manager 
SELECT * FROM employees e1
WHERE e1.HireDate < (SELECT e2.HireDate FROM employees e2 WHERE e2.EmployeeID = e1.ReportsTo);

-- Query to select all products whose UnitPrice is greater than the average UnitPrice of their supplier's products
SELECT * FROM products p1
WHERE UnitPrice > (SELECT AVG(p2.UnitPrice) FROM products p2 WHERE p2.SupplierID = p1.SupplierID);