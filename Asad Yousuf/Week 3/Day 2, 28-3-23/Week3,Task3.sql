--TASK 3
--INNER JOIN

--Write a statement to select all records from the two tables where there is a match in both tables.
SELECT *
FROM Orders
INNER JOIN Customers
ON Orders.CustomerID=Customers.CustomerID;

--Write a statment to selects all orders with customer information.
SELECT Orders.OrderID, Customers.ContactName
FROM Orders
INNER JOIN Customers 
ON Orders.CustomerID = Customers.CustomerID;


--LEFT JOIN
--select all customers, and any orders they might have:
SELECT Customers.ContactName, Orders.OrderID
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
ORDER BY Customers.ContactName;

--RIGHT JOIN
--Select all employees, and any orders they might have placed.

SELECT Orders.OrderID, Employees.LastName, Employees.FirstName
FROM Orders
RIGHT JOIN Employees
ON Orders.EmployeeID = Employees.EmployeeID
ORDER BY Orders.OrderID;


--FULL OUTER JOIN
--selects all customers, and all orders.
SELECT Customers.ContactName, Orders.OrderID 
FROM Customers
FULL OUTER JOIN Orders
ON Customers.CustomerID=Orders.CustomerID;


--SELF JOIN

--statement to match customers that are from the same city.
SELECT A.ContactName AS ContactName1, B.ContactName AS ContactName2, A.City
FROM Customers A, Customers B
WHERE A.CustomerID <> B.CustomerID
AND A.City = B.City
ORDER BY A.City;

--CROSS JOIN

--statement to selects all customers, and all orders.
SELECT Customers.ContactName, Orders.OrderID
FROM Customers
CROSS JOIN Orders;

--LEFT ANTI JOIN
--select all customers that do not have any order:
SELECT Customers.ContactName, Orders.OrderID
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
WHERE Orders.OrderID IS NULL;

--RIGHT ANTI JOIN
--select all customers that do not have any order:
SELECT Orders.OrderID, Employees.LastName, Employees.FirstName
FROM Orders
RIGHT JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
WHERE Orders.EmployeeID IS NULL;