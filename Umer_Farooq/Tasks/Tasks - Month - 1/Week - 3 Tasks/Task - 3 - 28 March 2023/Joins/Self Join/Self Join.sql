-- Self Join:

-- A self join allows you to join a table to itself. It helps query hierarchical data or compare rows within the same table.

--A self join uses the inner join or left join clause. Because the query that uses the self join references the same table, 
--the table alias is used to assign different names to the same table within the query.

--Note:
--that referencing the same table more than one in a query without using table aliases will result in an error.

-- Implementation & Syntax:

--To implement a self-join in Microsoft SQL Server, you can use the same table name multiple times in a SQL query 
--and use aliases to differentiate between the different instances of the table.

--Here's the basic syntax for a self-join:

--==SELECT t1.column1, t2.column2
--==FROM table t1
--==JOIN table t2 ON t1.columnX = t2.columnY
--==WHERE <condition>;


-- ==Questions:==

SELECT * FROM Employees;

--Find all pairs of employees who work in the same city and have the same job title.

SELECT -- We want result in pair so thats why we repeated the same columns in SELECT statement
	e1.FirstName+' '+e1.LastName AS Employee1, e1.City, e1.Title,
	e2.FirstName+' '+e2.LastName AS Employee2,e2.City, e2.Title
FROM Employees e1
INNER JOIN Employees e2
ON e1.City = e2.City AND e1.Title = e2.Title AND e1.EmployeeID < e2.EmployeeID -- This will eliminate duplicates;

--Find all pairs of products that are sold in the same category.
SELECT * FROM Products;

SELECT p1.ProductName, p2.ProductName, c.CategoryName
FROM Products p1
INNER JOIN Products p2
ON p1.CategoryID = p2.CategoryID AND p1.ProductID < p2.ProductID
INNER JOIN Categories c
ON p1.CategoryID = c.CategoryID;


--Find all pairs of customers who have the same postal code.
SELECT * FROM Customers ORDER BY ContactName;

SELECT c1.CustomerID, c1.ContactName, c2.CustomerID, c2.ContactName, c1.PostalCode, c2.PostalCode
FROM Customers c1
INNER JOIN Customers c2
ON c1.PostalCode = c2.PostalCode AND c1.CustomerID < c2.CustomerID;