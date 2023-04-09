-- Inner Join Example 1: Select all orders with customer details
SELECT *
FROM Orders
INNER JOIN Customers
ON Orders.CustomerID = Customers.CustomerID;

-- Inner Join Example 2: Select all products with category details
SELECT *
FROM Products
INNER JOIN Categories
ON Products.CategoryID = Categories.CategoryID;

-- Outer Join Example 1: Select all orders with customer details and show orders without customers
SELECT *
FROM Orders
LEFT OUTER JOIN Customers
ON Orders.CustomerID = Customers.CustomerID;

-- Outer Join Example 2: Select all products with supplier details and show products without suppliers
SELECT *
FROM Products
RIGHT OUTER JOIN Suppliers
ON Products.SupplierID = Suppliers.SupplierID;

-- Left Join Example 1: Select all customers with orders and show customers without orders
SELECT *
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;

-- Left Join Example 2: Select all employees with territories and show employees without territories
SELECT *
FROM Employees
LEFT JOIN EmployeeTerritories
ON Employees.EmployeeID = EmployeeTerritories.EmployeeID;

-- Right Join Example 1: Select all orders with customers and show orders without customers
SELECT *
FROM Orders
RIGHT JOIN Customers
ON Orders.CustomerID = Customers.CustomerID;

-- Right Join Example 2: Select all employees with territories and show territories without employees
SELECT *
FROM EmployeeTerritories
RIGHT JOIN Employees
ON EmployeeTerritories.EmployeeID = Employees.EmployeeID;

-- Self Join Example 1: Select all employees with their managers
SELECT e.FirstName AS Employee, m.FirstName AS Manager
FROM Employees e
LEFT JOIN Employees m
ON e.ReportsTo = m.EmployeeID;

-- Self Join Example 1: Select all employees with their managers
SELECT e.FirstName AS Employee, m.FirstName AS Manager
FROM Employees e
LEFT JOIN Employees m
ON e.ReportsTo = m.EmployeeID;

-- Cross Join Example 1: Select all possible combinations of products and suppliers
SELECT *
FROM Products
CROSS JOIN Suppliers;

-- Cross Join Example 2: Select all possible combinations of categories and territories
SELECT *
FROM Categories
CROSS JOIN Territories;

-- Left Anti-Join Example 1: Select all customers without orders
SELECT *
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
WHERE Orders.CustomerID IS NULL;

-- Left Anti-Join Example 2: Select all employees without territories
SELECT *
FROM Employees
LEFT JOIN EmployeeTerritories
ON Employees.EmployeeID = EmployeeTerritories.EmployeeID
WHERE EmployeeTerritories.EmployeeID IS NULL;

-- Right Anti-Join Example 1: Select all orders without customers
SELECT *
FROM Orders
LEFT JOIN Customers
ON Orders.CustomerID = Customers.CustomerID
WHERE Customers.CustomerID IS NULL;

-- Right Anti-Join Example 2: Select all territories without employees
SELECT *
FROM Territories
LEFT JOIN EmployeeTerritories
ON Territories.TerritoryID = EmployeeTerritories.TerritoryID
WHERE EmployeeTerritories.TerritoryID IS NULL;