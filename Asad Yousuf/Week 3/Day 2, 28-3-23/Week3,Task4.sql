--TASK 4
--1 - Write a query to show a list of customers and their corresponding orders.

SELECT CUSTOMERS.contactname , ORDERS.orderid
FROM CUSTOMERS
INNER JOIN ORDERS
ON Orders.CustomerID=Customers.CustomerID;

-- This can also be done as

SELECT CustomerID , orderid
FROM Orders;

--2 - Write a query to show a list of employees and their corresponding managers:
 SELECT E1.FirstName AS EmployeeName , E2.FirstName AS Manager
 FROM Employees E1 , Employees E2
 WHERE E1.EmployeeID = E2.ReportsTo;

--3 - Write a query to show a list of customers who have not placed any orders
SELECT CUSTOMERS.contactname , ORDERS.orderid
FROM CUSTOMERS
LEFT JOIN ORDERS
ON Orders.CustomerID=Customers.CustomerID
WHERE ORDERS.orderid IS NULL;

--4 - Write a query to show a list of employees and their corresponding territories, including those employees who have no territories assigned.
SELECT EmployeeTerritories.TerritoryID , Employees.EmployeeID , Employees.FirstName , Employees.LastName
FROM Employees
FULL OUTER JOIN EmployeeTerritories
ON Employees.EmployeeID = EmployeeTerritories.EmployeeID
ORDER BY Employees.FirstName;

-- Or this can also be done as

SELECT EmployeeTerritories.TerritoryID , EmployeeTerritories.EmployeeID
FROM EmployeeTerritories;



