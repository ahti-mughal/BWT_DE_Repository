use Northwind

-- 1 - Write a query to show a list of customers and their corresponding orders.
select c.customerid, c.CompanyName, o.orderid, o.orderdate from 
Customers as c
inner join Orders as o on c.CustomerID=o.CustomerID

--2 - Write a query to show a list of employees and their corresponding managers:
select e.firstName as employee, m.firstName as manager 
from Employees as e
left join Employees as m on e.ReportsTo=m.EmployeeID


--3 - Write a query to show a list of customers who have not placed any orders.
SELECT *FROM Customers as c
LEFT JOIN Orders as o
ON c.CustomerID = o.CustomerID
WHERE o.CustomerID IS NULL



--4 - Write a query to show a list of employees and their corresponding territories, including those employees who have no territories assigned.
Select e.EmployeeID, e.FirstName, e.LastName, t.TerritoryID, t.TerritoryDescription
FROM Employees as e
LEFT JOIN EmployeeTerritories as et
ON e.EmployeeID = et.EmployeeID
INNER JOIN Territories as t
ON et.TerritoryID = t.TerritoryID