--Write a query to show a list of customers and their corresponding orders.
select o.OrderID, c.ContactName, o.OrderDate, c.Address from Customers c inner join Orders o on c.CustomerID = o.CustomerID order by 1;

--Write a query to show a list of employees and their corresponding managers:
select e1.FirstName, e2.FirstName, e1.ReportsTo from Employees e1 left join Employees e2 on e1.ReportsTo = e2.EmployeeID;

--Write a query to show a list of customers who have not placed any orders.
select c.ContactName, o.OrderID from Customers c left join Orders o on c.CustomerID = o.CustomerID 

--Write a query to show a list of employees and their corresponding territories, including those employees who have no territories assigned.
select e.EmployeeID, e.FirstName, e.LastName, t.TerritoryID, t.TerritoryDescription
from Employees e
left join EmployeeTerritories et on e.EmployeeID = et.EmployeeID
left join Territories t on et.TerritoryID = t.TerritoryID
order by e.EmployeeID;