-- Write a query to show a list of customers and their corresponding orders.

select * from orders 
select * from customers


select Customers.CustomerID,Customers.ContactName,orders.OrderID,orders.OrderDate

from Customers
left join orders
on Customers.CustomerID=orders.CustomerID


--Write a query to show a list of employees and their corresponding managers:

select * from Employees 


select e1.FirstName as employee ,e2.FirstName as manager 
from Employees e1
inner join Employees e2
on e1.ReportsTo=e2.EmployeeID
 
 --Write a query to show a list of customers who have not placed any orders

 select * from Customers
 select * from Products

 select c.CustomerID,c.ContactName ,o.OrderID,o.ShipName
 from Customers c
full outer join orders o
on c.CustomerID=o.CustomerID
where o.CustomerID  is null

--Write a query to show a list of employees and 
--their corresponding territories, including those employees who have no territories assigned.

select * from Employees
select * from Territories

select e.EmployeeID,e.lastname,t.TerritoryID,t.TerritoryDescription
from Employees as e
left join EmployeeTerritories et
on e.EmployeeID=et.EmployeeID

left join Territories t
on et.TerritoryID=t.TerritoryID


