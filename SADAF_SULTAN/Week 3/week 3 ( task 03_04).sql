/*
Practice following in detail:

1 - Joins:
     • Inner Join
     • Outer Join
     • Left Join
     • Right Join
     • Self Join
     • Cross Join
     • Left anti-Join
     • Right anti-Join

Atleat try two examples of all these joins.*/
/* INNER JOIN */
SELECT * FROM Orders AS o
INNER JOIN [Order Details]  AS OD 
ON o.OrderID = OD.OrderID

SELECT o.OrderID, o.CustomerID, o.OrderDate  FROM Orders AS o
INNER JOIN Customers  AS c ON o.CustomerID = c.CustomerID

/* OUTER  JOIN */
SELECT * FROM Orders AS o
full OUTER JOIN [Order Details]  AS OD
ON o.OrderID = OD.OrderID


SELECT o.OrderID, o.CustomerID, o.OrderDate  FROM Orders AS o
FULL OUTER JOIN Customers  AS c ON o.CustomerID = c.CustomerID


/* LEFT  JOIN */
SELECT * FROM Orders AS o
LEFT JOIN [Order Details]  AS OD
ON o.OrderID = OD.OrderID


SELECT o.OrderID, o.CustomerID, o.OrderDate  FROM Orders AS o
LEFT JOIN Customers  AS c ON o.CustomerID = c.CustomerID


/* RIGHT  JOIN */
SELECT * FROM Orders AS o
RIGHT JOIN [Order Details]  AS OD
ON o.OrderID = OD.OrderID


SELECT o.OrderID, o.CustomerID, o.OrderDate  FROM Orders AS o
RIGHT JOIN Customers  AS c ON o.CustomerID = c.CustomerID


/* SELF  JOIN */
SELECT e1.TitleOfCourtesy,e1.FirstName,e1.LastName,e2.City,e2.Address
FROM Employees e1
INNER JOIN Employees e2 ON e1.Title= e2.Title AND e1.EmployeeID = e2.EmployeeID

SELECT P1.ProductName,P1.QuantityPerUnit,P2.UnitsInStock,P2.UnitsInStock
FROM Products P1
INNER JOIN Products P2 ON P1.UnitPrice= P2.UnitPrice 

/* CROSS JOIN */
SELECT P.ProductName, c.companyName, c.ContactTitle 
FROM Products P
CROSS JOIN Customers c

SELECT O.OrderDate ,OD.Quantity ,O.ShipCountry,OD.UnitPrice
FROM Orders O
CROSS JOIN [Order Details] OD

/*LEFT ANTI JOIN */

SELECT c.ContactName, c.CompanyName,O.ShipCountry
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE o.CustomerID IS NULL

/*RIGHT ANTI JOIN */

SELECT c.ContactName, c.CompanyName,O.ShipCountry
FROM Orders o
RIGHT JOIN Customers c  ON c.CustomerID = o.CustomerID
WHERE o.CustomerID IS NULL
/*Write the following queries using Northwind DB:

1 - Write a query to show a list of customers and their corresponding orders.*/

SELECT c.customerID, c.ContactName, o.OrderID, o.OrderDate
FROM Customers  AS c
LEFT JOIN Orders AS o ON c.CustomerID = o.CustomerID


/*2 - Write a query to show a list of employees and their corresponding managers:*/
SELECT e.EmployeeID, e.FirstName , e.LastName AS EmployeeName, 
       m.EmployeeID AS ManagerID, m.FirstName , m.LastName AS ManagerName
FROM Employees e
LEFT JOIN Employees m ON e.ReportsTo = m.EmployeeID;


/*3 - Write a query to show a list of customers who have not placed any orders.*/
SELECT c.CustomerID, c.ContactName
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE o.CustomerID IS NULL;


/*4 - Write a query to show a list of employees and their corresponding territories,
including those employees who have no territories assigned.
*/

SELECT e.EmployeeID, e.FirstName, e.LastName AS EmployeeName, t.TerritoryID, t.TerritoryDescription
FROM Employees e
LEFT JOIN EmployeeTerritories et ON e.EmployeeID = et.EmployeeID
LEFT JOIN Territories t ON et.TerritoryID = t.TerritoryID;
