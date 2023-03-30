select c.ContactName ,c.ContactTitle,o.OrderId,o.OrderDate from Orders AS o
left join Customers as c
on c.CustomerID=o.CustomerID
order by c.ContactName asc;

SELECT e.EmployeeID, e.FirstName, e.LastName, m.EmployeeID AS ManagerID, m.FirstName AS ManagerFirstName, m.LastName AS ManagerLastName
FROM Employees e
LEFT JOIN Employees m ON e.ReportsTo = m.EmployeeID
ORDER BY e.EmployeeID

SELECT Customers.ContactName, Orders.OrderID,Orders.ShipName
        FROM Customers Left JOIN Orders 
		on Customers.CustomerID = Orders.CustomerID
		where Orders.CustomerID is NULL;

SELECT  Employees.FirstName+Employees.LastName AS "Employee Name", EmployeeTerritories.EmployeeID,
        Territories.TerritoryID,EmployeeTerritories.TerritoryID
        FROM Employees Right JOIN EmployeeTerritories 
		on Employees.EmployeeID = EmployeeTerritories.EmployeeID 
		Right join Territories on Territories.TerritoryID = EmployeeTerritories.TerritoryID ;
