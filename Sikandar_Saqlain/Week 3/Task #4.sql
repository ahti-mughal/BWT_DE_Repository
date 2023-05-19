--1 - Write a query to show a list of customers and their corresponding orders.
SELECT * FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
ORDER BY c.ContactName

--2 - Write a query to show a list of employees and their corresponding managers:
SELECT e.FirstName, e.LastName, w.FirstName as 'Reports To' FROM Employees e
JOIN Employees w ON e.ReportsTo = w.EmployeeID
WHERE e.EmployeeID != w.EmployeeID


--3 - Write a query to show a list of customers who have not placed any orders.
SELECT * FROM Customers c
LEFT JOIN Orders o
ON c.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL


--4 - Write a query to show a list of employees and their corresponding territories, including those employees who have no territories assigned.
SELECT e.FirstName, e.LastName, t.TerritoryDescription   FROM Employees e
LEFT JOIN EmployeeTerritories et ON e.EmployeeID = et.EmployeeID
LEFT JOIN Territories t ON et.TerritoryID = t.TerritoryID