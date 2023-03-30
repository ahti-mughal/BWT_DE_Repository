use Northwind

/*##########################
=========== JOINS ==========
############################ */

--==== INNER JOIN =========

--Example 1:
SELECT *
FROM Employees
JOIN orders ON employees.EmployeeID = Orders.EmployeeID;

--Example 2:
SELECT Customers.CustomerID, Orders.OrderID
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;


--==== Outer JOIN =========

--Example 1:
select * from employees as e 
full outer join orders as o on o.EmployeeID=e.EmployeeID
where Region is null;

--Example 2 :
SELECT Customers.CustomerID, Orders.OrderID
FROM Customers
LEFT OUTER JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;


--==== Left JOIN =========

--Example 1 :
SELECT Customers.CustomerID, Orders.OrderID
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;

--Example 2:
select * from employees as e 
left join orders as o on o.EmployeeID=e.EmployeeID


--==== Right JOIN =========

--Example 1 :
select * from employees as e 
right join orders as o on o.EmployeeID=e.EmployeeID

--Example 2:
SELECT Customers.CustomerID, Orders.OrderID
FROM Customers
RIGHT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;


--==== Self JOIN =========

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


--==== Cross JOIN =========

--Example 1:

SELECT Customers.CustomerID, Products.ProductID
FROM Customers
CROSS JOIN Products;

--Example2 :
SELECT *
FROM Products
CROSS JOIN Categories
ORDER BY ProductName;


--==== Left Anti JOIN =========

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


--==== Right anti JOIN =========

--Example 1:

SELECT Orders.OrderID
FROM Customers
RIGHT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
WHERE Customers.CustomerID IS NULL;

--Example 2:
SELECT *
FROM Order_Details
RIGHT JOIN Orders ON Order_Details.OrderID = Orders.OrderID
WHERE Order_Details.OrderID IS NULL;