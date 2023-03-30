USE Northwind;
-- Write a query to show a list of customers and their corresponding orders
SELECT Customers.CustomerID, Customers.ContactName, Orders.OrderDate, Products.ProductName, Customers.City, Orders.ShipName
FROM Customers
INNER JOIN ORDERS 
ON Customers.CustomerID = Orders.CustomerID
INNER JOIN [Order Details]
ON [Order Details].OrderID = Orders.OrderID
INNER JOIN Products 
ON [Order Details].ProductID = Products.ProductID; 

 -- Write a query to show a list of employees and their corresponding managers
SELECT Employees.FirstName as Employee_Name, Customers.ContactName AS Manager_Name
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
INNER JOIN Employees
ON Orders.EmployeeID = Employees.EmployeeID;   

-- Write a query to show a list of customers who have not placed any orders.
SELECT Customers.CustomerID, Customers.ContactName, Orders.OrderID
FROM Customers
LEFT JOIN Orders
ON Orders.CustomerID = Customers.CustomerID
WHERE Orders.OrderID IS NULL; 

-- Write a query to show a list of employees and their corresponding territories, including those employees who have no territories assigned
SELECT Employees.EmployeeID, FirstName, Territories.TerritoryDescription
FROM Employees
LEFT JOIN  EmployeeTerritories
ON Employees.EmployeeID = EmployeeTerritories.EmployeeID
LEFT JOIN territories
ON territories.TerritoryID = EmployeeTerritories.TerritoryID
