USE northwind;

--Write a query to show a list of customers and their corresponding orders.

--Here we use inner join

SELECT C.CompanyName, P.ProductName
FROM Customers C
JOIN Orders O ON C.CustomerID = O.CustomerID 
JOIN [Order Details] OD ON O.OrderID = OD.OrderID
JOIN Products P ON OD.ProductID = P.ProductID;

--Write a query to show a list of employees and their corresponding managers.

--Here we use self join.

SELECT employe.FirstName AS emp_name, manager.FirstName AS manger_name
FROM Employees AS employe 
LEFT JOIN Employees AS manager ON employe.ReportsTo = manager.EmployeeID;


--Write a query to show a list of customers who have not placed any orders.

--Here we use left anti join.

SELECT C.CompanyName, P.ProductName
FROM Customers C
LEFT JOIN Orders O ON C.CustomerID = O.CustomerID 
LEFT JOIN [Order Details] OD ON O.OrderID = OD.OrderID
LEFT JOIN Products P ON OD.ProductID = P.ProductID
WHERE P.ProductID IS NULL;

--Write a query to show a list of employees and their corresponding territories, including those employees who have no territories assigned.

SELECT * FROM Territories;
SELECT * FROM Employees;
SELECT * FROM EmployeeTerritories;

SELECT E.FirstName, T.TerritoryDescription
FROM Employees E
LEFT JOIN EmployeeTerritories ET ON E.EmployeeID = ET.EmployeeID
LEFT JOIN Territories T ON ET.TerritoryID = T.TerritoryID;
