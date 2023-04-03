/*#1*/
SELECT Customers.contactName, Orders.OrderID, Orders.OrderDate
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
ORDER BY Customers.contactName;

/*#2*/
SELECT e.firstName, m.firstName AS ManagerName
FROM Employees e
LEFT JOIN Employees m ON e.ReportsTo= m.EmployeeID;

/*#3*/
SELECT Customers.ContactName
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
WHERE Orders.OrderID IS NULL;

/*#4*/
SELECT e.EmployeeID, e.FirstName, e.LastName, t.TerritoryID, t.TerritoryDescription
FROM Employees e
LEFT JOIN EmployeeTerritories et ON e.EmployeeID = et.EmployeeID
LEFT JOIN Territories t ON et.TerritoryID = t.TerritoryID
ORDER BY e.EmployeeID;
