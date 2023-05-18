--Inner Join
SELECT Customers.ContactName, Customers.Address, Orders.OrderDate, Employees.FirstName as 'Employee'
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID

SELECT Products.ProductName, [Order Details].Quantity, [Order Details].Discount
FROM [Order Details] 
INNER JOIN Products ON [Order Details].ProductID = Products.ProductID

--Outer Join
SELECT e.FirstName as 'Employee', o.OrderDate
FROM Employees e
FULL OUTER JOIN Orders o ON e.EmployeeID = o.EmployeeID

--Left Join
SELECT p.ProductName, c.CategoryName
FROM Products p
LEFT JOIN Categories c ON p.CategoryID = c.CategoryID

--Right Join
SELECT o.OrderDate, s.CompanyName
FROM Orders o
RIGHT JOIN Shippers s ON o.ShipVia = s.ShipperID


--Self Join
SELECT w.FirstName + w.LastName AS 'Worker',
		m.FirstName + m.LastName AS 'Reports to'
FROM Employees w
JOIN Employees m ON w.ReportsTo = m.EmployeeID


--Cross Join
SELECT sh.CompanyName AS 'Shipper Name', su.CompanyName as 'Supplier Name'
FROM Shippers sh
CROSS JOIN Suppliers su


--Left Anti-Join
--Filters out values that are present in the left table but NOT present in the right table
SELECT * FROM Customers c
LEFT JOIN Orders o
ON c.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL


--Right Anti-Join
--Functions the same as left anti join, only it acts on the right table
SELECT e.FirstName,e.LastName FROM Orders o
RIGHT JOIN Employees e ON o.EmployeeID = e.EmployeeID
WHERE o.EmployeeID IS NULL