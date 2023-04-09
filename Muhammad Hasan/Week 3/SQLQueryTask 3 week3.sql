--Task3 Week3
-- INNER JOIN 
--The INNER JOIN keyword selects records that have matching values in both tables.

--Example 1:
SELECT *
FROM Employees
JOIN orders ON employees.EmployeeID = Orders.EmployeeID;

--Example 2:
SELECT Customers.CustomerID, Orders.OrderID
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;

--Outer JOIN

--Example 1:
select * from employees as e 
full outer join orders as o on o.EmployeeID=e.EmployeeID
where Region is null;

--Example 2 :
SELECT Customers.CustomerID, Orders.OrderID
FROM Customers
LEFT OUTER JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;


--Left JOIN
--The LEFT JOIN keyword returns all records from the left table (table1), and the matching records from the right table (table2). The result is 0 records from the right side, if there is no match.
--Example 1 :
SELECT Customers.CustomerID, Orders.OrderID
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;

--Example 2:
select * from employees as e 
left join orders as o on o.EmployeeID=e.EmployeeID


--Right JOIN
--The RIGHT JOIN keyword returns all records from the right table (table2), and the matching records from the left table (table1). The result is 0 records from the left side, if there is no match.

--Example 1 :
select * from employees as e 
right join orders as o on o.EmployeeID=e.EmployeeID

--Example 2:
SELECT Customers.CustomerID, Orders.OrderID
FROM Customers
RIGHT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;


-- Self JOIN
--A self join is a regular join, but the table is joined with itself.

--Example 1:
SELECT e1.FirstName, e1.LastName, e2.FirstName, e2.LastName
FROM Employees e1
INNER JOIN Employees e2
ON e1.ReportsTo = e2.EmployeeID;

--Example 2:
SELECT e1.LastName, e2.LastName as ManagerName
FROM Employees e1
JOIN Employees e2 ON e1.ReportsTo = e2.EmployeeID
ORDER BY e1.LastName;


--cross JOIN

--Example 1:

SELECT Customers.CustomerID, Products.ProductID
FROM Customers
CROSS JOIN Products;

--Example2 :
SELECT Categories.CategoryID, Products.ProductID
FROM Products
CROSS JOIN Categories
ORDER BY ProductName;


--Left Anti JOIN 

--Example 1:

SELECT Customers.CustomerID
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
WHERE Orders.CustomerID IS NULL;

--Example 2:
SELECT *
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
WHERE Orders.CustomerID IS NULL;


--Right anti JOIN 

--Example 1:

SELECT Orders.OrderID
FROM Customers
RIGHT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
WHERE Customers.CustomerID IS NULL;

--Example 2:


SELECT Orders.OrderID
FROM Orders
RIGHT JOIN Products 
ON Products.ProductID = Orders.OrderID
WHERE Orders.OrderID IS NULL;