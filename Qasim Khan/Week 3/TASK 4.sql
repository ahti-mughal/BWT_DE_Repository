USE northwind

--JOINS QUERIES

SELECT * FROM Customers
SELECT * FROM Orders
SELECT * FROM EmployeeTerritories
SELECT * FROM Employees
SELECT * FROM Territories

--1 - Write a query to show a list of customers and their corresponding orders.
SELECT C.CustomerID,C.CompanyName,O.OrderID,O.OrderDate
FROM Customers C 
INNER JOIN Orders O ON C.CustomerID = O.CustomerID

--2 - Write a query to show a list of employees and their corresponding managers:

SELECT E.EmployeeID,E.FirstName,E.LastName,M.ReportsTo
FROM Employees E
LEFT JOIN Employees M ON E.EmployeeID = M.ReportsTo
ORDER BY EmployeeID

--3 - Write a query to show a list of customers who have not placed any orders.

SELECT C.CustomerID,C.CompanyName
FROM Customers C
LEFT JOIN Orders O ON C.CustomerID=O.CustomerID
WHERE O.CustomerID IS NULL


--4 - Write a query to show a list of employees and their corresponding territories, including those employees who have no territories assigned.

SELECT E.EmployeeID,E.FirstName,E.LastName,T.TerritoryDescription
FROM Employees E
LEFT JOIN EmployeeTerritories ET ON E.EmployeeID = ET.EmployeeID
LEFT JOIN Territories T ON ET.TerritoryID =T.TerritoryID

