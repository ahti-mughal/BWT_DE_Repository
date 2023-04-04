
-- 1. Show a list of customers and their corresponding orders

SELECT C.CustomerID, C.CompanyName, O.OrderID, O.OrderDate
FROM Customers C
INNER JOIN Orders O
ON C.CustomerID = O.CustomerID
ORDER BY C.CustomerID;

-- 2. Show a list of employees and their corresponding managers
SELECT e.FirstName AS Employee, m.FirstName AS Manager
FROM Employees e
LEFT JOIN Employees m
ON e.ReportsTo = m.EmployeeID;

-- 3. Show a list of customers who have not placed any orders
SELECT *
FROM Customers c
LEFT JOIN Orders o
ON c.CustomerID = o.CustomerID
WHERE o.CustomerID IS NULL;

-- 4. Show a list of employees and their corresponding territories, including those employees who have no territories assigned
SELECT e.EmployeeID, e.FirstName, e.LastName, t.TerritoryID, t.TerritoryDescription
FROM Employees e
LEFT JOIN EmployeeTerritories et
ON e.EmployeeID = et.EmployeeID
INNER JOIN Territories t
ON et.TerritoryID = t.TerritoryID;