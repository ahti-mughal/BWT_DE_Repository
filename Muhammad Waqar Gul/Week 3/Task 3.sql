/*SELECT Customers.CompanyName, Orders.OrderID, Orders.OrderDate
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
WHERE Customers.Country = 'USA'*/


/*SELECT Customers.CustomerID, Customers.ContactName, Orders.OrderID
FROM Customers
LEFT OUTER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;*/

/*SELECT Customers.CustomerID, Customers.ContactName, Orders.OrderID, Orders.OrderDate
FROM Customers
RIGHT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;*/

/*SELECT e1.FirstName + ' ' + e1.LastName AS EmployeeName, e2.FirstName + ' ' + e2.LastName AS SupervisorName
FROM Employees e1
INNER JOIN Employees e2 ON e1.ReportsTo = e2.EmployeeID*/

/*SELECT Products.ProductName, Suppliers.CompanyName
FROM Products
CROSS JOIN Suppliers;*/

/*SELECT Customers.CustomerID, Customers.CompanyName
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
WHERE Orders.OrderID IS NULL;*/

SELECT *
FROM Customers
WHERE CustomerID NOT IN (SELECT CustomerID FROM Orders)




