USE northwind

-- Inner Join
-- An inner join returns only the rows from both tables 
-- that have matching values based on the specified join condition.

-- SELECT c.CustomerID, c.CompanyName, o.OrderID, o.OrderDate
-- FROM Customers c
-- INNER JOIN Orders o ON c.CustomerID = o.CustomerID;

-- This query joins the Customers and Orders tables on the CustomerID column, returning only the rows where there is a match between the two tables.

-- Outer Join
-- An outer join returns all the rows from one table and the matching rows from another table based on the specified join condition. 
-- If there is no match in the other table, NULL values are returned for that table.

-- SELECT c.CustomerID, c.CompanyName, o.OrderID, o.OrderDate
-- FROM Customers c
-- LEFT OUTER JOIN Orders o ON c.CustomerID = o.CustomerID;

-- This query joins the Customers and Orders tables on the CustomerID column, 
-- returning all rows from the Customers table and the matching rows from the Orders table. If there is no matching row in the Orders table, the columns from the Orders table will be NULL.

-- Left Join
-- A left join returns all the rows from the left table and the matching rows from the right table based on the specified join condition. 
-- If there is no match in the right table, NULL values are returned for that table.

-- SELECT c.CustomerID, c.CompanyName, o.OrderID, o.OrderDate
-- FROM Customers c
-- LEFT JOIN Orders o ON c.CustomerID = o.CustomerID;

-- This query is similar to the previous outer join example, but using the LEFT keyword instead of LEFT OUTER. 
-- It returns all rows from the Customers table and the matching rows from the Orders table, with NULL values 
-- for the Orders table columns if there is no match.

-- Right Join
-- A right join returns all the rows from the right table and the matching rows from the left table based on the specified join condition. 
-- If there is no match in the left table, NULL values are returned for that table.

-- SELECT c.CustomerID, c.CompanyName, o.OrderID, o.OrderDate
-- FROM Customers c
-- RIGHT JOIN Orders o ON c.CustomerID = o.CustomerID;

-- This query is similar to the previous outer join example, but using the RIGHT keyword instead of LEFT OUTER. 
-- It returns all rows from the Orders table and the matching rows from the Customers table, with NULL values for the Customers 
-- table columns if there is no match.

-- Self Join
-- A self join is a join in which a table is joined with itself.

-- SELECT e1.FirstName, e1.LastName, e2.FirstName AS ManagerFirstName, e2.LastName AS ManagerLastName
-- FROM Employees e1
-- INNER JOIN Employees e2 ON e1.ReportsTo = e2.EmployeeID;

-- This query joins the Employees table with itself on the ReportsTo column, which contains the EmployeeID of the employee's manager. 
-- It returns the first and last name of each employee and the first and last name of their manager.

-- Cross Join
-- A cross join returns the Cartesian product of the two tables, which means all possible combinations of rows from the two tables are returned.

-- SELECT *
-- FROM Customers
-- CROSS JOIN Employees;

-- This query returns all possible combinations of rows from the Customers and Employees tables, resulting in a large number of rows.

-- Left Anti-Join
-- A left anti-join returns only the rows from the left table that do not have matching values in the right table based on the specified join condition.

-- SELECT c.CustomerID, c.CompanyName
-- FROM Customers c
-- LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
-- WHERE o.CustomerID IS NULL;

-- This query joins the Customers and Orders tables on the CustomerID column using a left join, and then filters the results to only include the rows where there is no match in the Orders table. This effectively returns the list of customers who have not placed any orders.

-- Right Anti-Join
-- A right anti-join returns only the rows from the right table that do not have matching values in the left table based on the specified join condition.

-- SELECT o.OrderID, o.OrderDate
-- FROM Customers c
-- RIGHT JOIN Orders o ON c.CustomerID = o.CustomerID
-- WHERE c.CustomerID IS NULL;

-- This query joins the Customers and Orders tables on the CustomerID column using a right join, 
-- and then filters the results to only include the rows where there is no match in the Customers table. 
-- This effectively returns the list of orders placed by customers that are not in the Customers table (which in this case, 
-- would be none since the Northwind database has referential integrity constraints).



/*                          Second Example                                          */

-- Inner Join

-- SELECT c.CustomerID, c.CompanyName, o.OrderID, o.OrderDate
-- FROM Customers c
-- INNER JOIN Orders o ON c.CustomerID = o.CustomerID
-- INNER JOIN OrderDetails od ON o.OrderID = od.OrderID
-- INNER JOIN Products p ON od.ProductID = p.ProductID;

-- Outer Join

-- SELECT c.CustomerID, c.CompanyName, o.OrderID, o.OrderDate
-- FROM Customers c
-- FULL OUTER JOIN Orders o ON c.CustomerID = o.CustomerID
-- WHERE o.OrderID IS NULL OR c.CustomerID IS NULL;

-- Left Join

-- SELECT c.CategoryName, COUNT(p.ProductID) AS ProductCount
-- FROM Categories c
-- LEFT JOIN Products p ON c.CategoryID = p.CategoryID
-- GROUP BY c.CategoryName;

-- Right Join

-- SELECT e1.FirstName, e1.LastName, e2.FirstName AS ManagerFirstName, e2.LastName AS ManagerLastName
-- FROM Employees e1
-- RIGHT JOIN Employees e2 ON e1.ReportsTo = e2.EmployeeID
-- ORDER BY ManagerLastName, ManagerFirstName;

-- Self Join

-- SELECT e.EmployeeID, e.LastName, e.FirstName, m.LastName AS ManagerLastName, m.FirstName AS ManagerFirstName
-- FROM Employees e
-- LEFT JOIN Employees m ON e.ReportsTo = m.EmployeeID;

-- Cross Join

-- SELECT c.CustomerID, c.CompanyName, e.EmployeeID, e.FirstName, e.LastName
-- FROM Customers c
-- CROSS JOIN Employees e
-- WHERE c.CustomerID IN ('ALFKI', 'ANTON');

-- Left Anti-Join

-- SELECT p.ProductID, p.ProductName, c.CategoryName
-- FROM Products p
-- LEFT JOIN Categories c ON p.CategoryID = c.CategoryID
-- WHERE c.CategoryID IS NULL;

-- Right Anti-Join

SELECT o.OrderID, o.OrderDate
FROM Customers c
RIGHT JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE c.CustomerID IS NULL;

