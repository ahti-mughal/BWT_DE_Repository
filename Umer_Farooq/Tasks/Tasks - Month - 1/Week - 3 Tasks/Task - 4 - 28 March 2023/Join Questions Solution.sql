-- 1 - Write a query to show a list of customers and their corresponding orders.
SELECT c.CustomerID, c.ContactName, o.OrderID
FROM Customers c
INNER JOIN Orders o
ON c.CustomerID = o.CustomerID;

-- 2 - Write a query to show a list of employees and their corresponding managers.
SELECT * FROM Employees;

SELECT 
	e.EmployeeID, e.FirstName+' '+e.LastName AS EmployeeName, e.Title,
	m.EmployeeID AS ManagerID, m.FirstName+' '+m.LastName AS ManagerName, m.Title
FROM Employees e
INNER JOIN Employees m
ON e.ReportsTo = m.EmployeeID;
--WHERE e.Title NOT IN('Sales Manager');

-- 3 - Write a query to show a list of customers who have not placed any orders.
SELECT c.CustomerID, c.ContactName
FROM Customers c
INNER JOIN Orders o
-- only the customers who have placed orders are included in the result set
ON c.CustomerID = o.CustomerID
-- Returns results of those customers who have not placed any order
WHERE o.CustomerID IS NULL; 

-- 4 - Write a query to show a list of employees and their corresponding territories, 
--     including those employees who have no territories assigned.
SELECT e.EmployeeID, e.FirstName+' '+e.LastName As EmployeeName, et.TerritoryID, t.TerritoryDescription
FROM Employees e
FULL JOIN EmployeeTerritories et
ON e.EmployeeID = et.EmployeeID
FULL JOIN Territories t
ON et.TerritoryID = t.TerritoryID
ORDER BY TerritoryID;
