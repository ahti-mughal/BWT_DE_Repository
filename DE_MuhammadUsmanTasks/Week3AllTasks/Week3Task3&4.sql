use Northwind

--Task3

/*Practice following in detail:

1 - Joins:
     • Inner Join
     • Outer Join
     • Left Join
     • Right Join
     • Self Join
     • Cross Join
     • Left anti-Join
     • Right anti-Join*/


--Inner Join


Select * from Customers
Select * from Orders
Select * from Employees

Select c.CompanyName,o.ShippedDate,o.ShipCountry,c.ContactName  from Customers as c inner Join Orders as o on c.CustomerID=o.CustomerID

Select c.ContactName,o.ShipRegion,c.Address,o.RequiredDate  from Customers as c inner Join Orders as o on c.CustomerID=o.CustomerID

--Full Outer Join  This command will return all customers and their orders, 
--including those customers who have not placed any orders and those orders that have not been placed by any customers.

Select c.CompanyName,o.ShippedDate,c.City  from Customers as c full outer Join Orders as o on c.CustomerID=o.CustomerID

Select c.CustomerID,o.OrderID,c.City  from Customers as c full outer Join Orders as o on c.CustomerID=o.CustomerID

--Left Join    Retreives All values from left table and matching values from right table

Select c.CompanyName,o.ShipName,o.ShipRegion  from Customers as c left Join Orders as o on c.CustomerID=o.CustomerID

Select c.Phone,o.ShipPostalCode,c.Region  from Customers as c left Join Orders as o on c.CustomerID=o.CustomerID

--Right Join   Retreives All values from right table and matching values from left table

Select c.CompanyName,o.ShippedDate,o.ShipCountry  from Customers as c right Join Orders as o on c.CustomerID=o.CustomerID

Select c.Address,o.Freight,o.ShipName  from Customers as c right Join Orders as o on c.CustomerID=o.CustomerID

--Self join combines rows from a single table. 

Select e1.FirstName,e2.Title, e1.City from Employees e1 inner join Employees e2 on e1.EmployeeID=e2.EmployeeID

Select p1.ProductName,p2.QuantityPerUnit, p1.CategoryID from Products p1 inner join Products p2 on p1.ProductID=p1.ProductID

-- Cross Join  all possible combinations of rows from both tables will be returned.

SELECT c.CustomerID,p.SupplierID,c.CompanyName,p.ProductName
FROM customers As c
CROSS JOIN products As p 

SELECT c.CustomerID,cp.Relationship,c.CompanyName
FROM customers As c
CROSS JOIN [Customer and Suppliers by City] As cp 

--Left anti-Join can be useful for identifying records that are missing from one table compared to another

SELECT c.CompanyName,o.OrderDate,c.City FROM customers c
LEFT JOIN orders o ON c.CustomerID = o.CustomerID WHERE o.CustomerID IS NULL

SELECT c.CustomerID,o.OrderID,c.City FROM customers c
LEFT JOIN orders o ON c.CustomerID = o.CustomerID WHERE o.CustomerID IS NULL

-- Right Anti Join can be useful for identifying records that are missing from one table compared to another


SELECT c.ContactName, c.Country,O.ShipCountry FROM Orders o RIGHT JOIN Customers c  ON c.CustomerID = o.CustomerID
WHERE o.CustomerID IS NULL


--Task4

--1-Write a query to show a list of customers and their corresponding orders.

select c.CustomerID,o.OrderID,o.OrderDate from Customers c left join Orders o on c.CustomerID=o.CustomerID

--2- Write a query to show a list of employees and their corresponding managers:

SELECT e.EmployeeID,e.FirstName,e.LastName AS EmployeeName,m.EmployeeID AS ManagerID, m.FirstName , m.LastName AS ManagerName
FROM Employees e LEFT JOIN Employees m ON e.ReportsTo = m.EmployeeID;

Select * from Employees

--3- Write a query to show a list of customers who have not placed any orders.

select c.CustomerID,c.ContactName from Customers c left join Orders o on c.CustomerID=o.CustomerID where o.CustomerID is NULL

--4- Write a query to show a list of employees and their corresponding territories, including those employees who have no territories assigned.

select e.EmployeeID, e.FirstName, e.LastName AS EmployeeName, t.TerritoryID, t.TerritoryDescription
from Employees e LEFT JOIN EmployeeTerritories et ON e.EmployeeID = et.EmployeeID LEFT JOIN Territories t ON et.TerritoryID = t.TerritoryID