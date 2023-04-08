/*---TASK 3---*/

-- Inner Join
SELECT ProductName, CategoryName, Description
FROM Products
INNER JOIN Categories
ON Products.CategoryID = Categories.CategoryID;

-- Outer Join
SELECT ProductName, CategoryName, Description
FROM Products
FULL OUTER JOIN Categories
ON Products.CategoryID = Categories.CategoryID;

-- Left Join
SELECT ProductName, CategoryName, Description
FROM Products
LEFT OUTER JOIN Categories
ON Products.CategoryID = Categories.CategoryID;

-- Right Join

SELECT ProductName, CategoryName, Description
FROM Products
RIGHT JOIN Categories
ON Products.CategoryID = Categories.CategoryID;

-- Self Join
SELECT e.FirstName AS Employee, m.FirstName AS Manager
FROM Employees e
INNER JOIN Employees m ON e.ReportsTo = m.EmployeeID;

-- Cross Join
SELECT *
FROM Products
CROSS JOIN Categories;

-- Left anti-Join
SELECT ProductName, CategoryName, Description
FROM Products
LEFT JOIN Categories
ON Products.CategoryID = Categories.CategoryID
WHERE Categories.CategoryID IS NULL;

-- Right anti-Join
SELECT ProductName, CategoryName, Description
FROM Products
LEFT JOIN Categories
ON Products.CategoryID = Categories.CategoryID
WHERE Products.CategoryID IS NULL;

/*---TASK 4---*/

-- Write a query to show a list of customers and their corresponding orders

SELECT OrderID, Orders.CustomerID, CompanyName, OrderDate
FROM Orders
INNER JOIN Customers
ON Orders.CustomerID = Customers.CustomerID
ORDER BY OrderID;

-- Write a query to show a list of employees and their corresponding managers:
SELECT e.FirstName AS Employee, m.FirstName AS Manager
FROM Employees e
INNER JOIN Employees m ON e.ReportsTo = m.EmployeeID;

-- Write a query to show a list of customers who have not placed any orders.

SELECT CompanyName 
FROM Customers 
FULL OUTER JOIN Orders 
ON Customers.CustomerID = Orders.CustomerID
WHERE OrderID IS NULL;

-- WRITE A QUERY TO SHOW A LIST OF EMPLOYEES AND THEIR CORRESPONDING TERRITORIES, INCLUDING THOSE EMPLOYEES WHO HAVE NO TERRIRTORIES ASSIGNED.

SELECT FirstName
FROM Employees
FULL OUTER JOIN EmployeeTerritories
ON Employees.EmployeeID = EmployeeTerritories.EmployeeID
WHERE TerritoryID IS NULL;