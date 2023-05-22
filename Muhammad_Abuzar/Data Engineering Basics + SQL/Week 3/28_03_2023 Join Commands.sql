--Inner Join
SELECT Orders.OrderID, Customers.CustomerName
FROM Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;

--Outer Join
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
LEFT OUTER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

--Left Join
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

--Right Join
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

--Self Join
SELECT e.EmployeeID, e.LastName, m.EmployeeID, m.LastName
FROM Employees e
INNER JOIN Employees m ON e.ReportsTo = m.EmployeeID;

--Cross Join
SELECT *
FROM Customers
CROSS JOIN Orders;

--Left anti Join
SELECT Customers.CustomerName
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
WHERE Orders.CustomerID IS NULL;

--Right anti Join
SELECT Customers.CustomerName
FROM Orders
LEFT JOIN Customers ON Orders.CustomerID = Customers.CustomerID
WHERE Customers.CustomerID IS NULL;
