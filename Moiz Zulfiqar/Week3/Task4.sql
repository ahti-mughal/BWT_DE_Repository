USE northwind

-- 1 - Write a query to show a list of customers and their corresponding orders.

-- SELECT c.CustomerID, c.CompanyName, o.OrderID, o.OrderDate
-- FROM Customers c
-- INNER JOIN Orders o ON c.CustomerID = o.CustomerID;

-- 2 - Write a query to show a list of employees and their corresponding managers:

-- SELECT e1.FirstName, e1.LastName, e2.FirstName AS ManagerFirstName, e2.LastName AS ManagerLastName
-- FROM Employees e1
-- LEFT JOIN Employees e2 ON e1.ReportsTo = e2.EmployeeID;

-- 3 - Write a query to show a list of customers who have not placed any orders.

-- SELECT c.CustomerID, c.CompanyName
-- FROM Customers c
-- LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
-- WHERE o.CustomerID IS NULL;

-- 4 - Write a query to show a list of employees and their corresponding territories, including those employees who have no territories assigned.

SELECT e.FirstName, e.LastName, t.TerritoryID, t.TerritoryDescription
FROM Employees e
LEFT JOIN EmployeeTerritories et ON e.EmployeeID = et.EmployeeID
LEFT JOIN Territories t ON et.TerritoryID = t.TerritoryID;


