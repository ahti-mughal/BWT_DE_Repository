--Show a list of customers and their corresponding orders:
SELECT c.CustomerID, c.ContactName, o.OrderID, o.OrderDate
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
ORDER BY c.CustomerID, o.OrderID;


--Show a list of employees and their corresponding managers
SELECT e.EmployeeID, e.FirstName + ' ' + e.LastName AS EmployeeName,
       m.EmployeeID AS ManagerID, m.FirstName + ' ' + m.LastName AS ManagerName
FROM Employees e
LEFT JOIN Employees m ON e.ReportsTo = m.EmployeeID
ORDER BY e.EmployeeID;


--Show a list of customers who have not placed any orders:
SELECT c.CustomerID, c.ContactName
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE o.CustomerID IS NULL;


--Show a list of employees and their corresponding territories, including those employees who have no territories assigned
SELECT e.EmployeeID, e.FirstName + ' ' + e.LastName AS EmployeeName, 
       t.TerritoryID, t.TerritoryDescription
FROM Employees e
LEFT JOIN EmployeeTerritories et ON e.EmployeeID = et.EmployeeID
LEFT JOIN Territories t ON et.TerritoryID = t.TerritoryID
ORDER BY e.EmployeeID, t.TerritoryID;
