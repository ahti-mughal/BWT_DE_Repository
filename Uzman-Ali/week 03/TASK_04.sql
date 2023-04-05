--> Write the SQL queries using Northwind DB.
USE northwind;
--Q1. Write a query to show a list of customers and their corresponding orders.
SELECT Customers.CustomerID, ContactName, OrderID
FROM Customers
FULL OUTER JOIN Orders
    ON Customers.CustomerID = Orders.CustomerID
ORDER BY ContactName

--Q2. Write a query to show a list of employees and their corresponding managers.
SELECT A.FirstName+ ' '+A.LastName AS E_Name, A.ReportsTO, 
   B.FirstName+ ' '+B.LastName AS M_Name
FROM Employees A
LEFT OUTER JOIN Employees B
    ON A.ReportsTo = B.EmployeeID


--Q3. Write a query to show a list of customers who have not placed any orders
SELECT ContactName AS CustomerName, Customers.CustomerID, OrderID
FROM Customers
LEFT OUTER JOIN Orders
    ON Customers.CustomerID = Orders.CustomerID
WHERE OrderID IS NULL

--Q4. Write a query to show a list of employees and their corresponding territories,
--    including those employees who have no territories assigned.

SELECT FirstName+ ' '+LastName AS E_Name, Employees.EmployeeID, 
    Territories.TerritoryDescription

FROM Employees
LEFT OUTER JOIN EmployeeTerritories
    ON Employees.EmployeeID = EmployeeTerritories.EmployeeID
	--using another left join yo find all employees who donot have territories
LEFT OUTER JOIN Territories
    ON EmployeeTerritories.TerritoryID = Territories.TerritoryID
-- Explanation
/*
In this query, we are using the LEFT JOIN between the Employees table and the 
EmployeeTerritories table to get all employees, including those who have no territories 
assigned to them. Then, we are using another LEFT JOIN between the EmployeeTerritories 
table and the Territories table to get the information about the territories. 
This will return all employees and their corresponding territories, including those 
employees who have no territories assigned. 

By using the LEFT JOIN, we are ensuring that all records from the Employees table
are returned, even if there is no matching record in the EmployeeTerritories or 
Territories tables. 
This allows us to see the employees who have no territories assigned, as well 
as those who do. */
