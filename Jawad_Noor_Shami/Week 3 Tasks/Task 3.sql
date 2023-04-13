/* JOIns*/

--Inner Join
--1st Example
Select Products.ProductID, Categories.CategoryID
from Products
inner join Categories
on Products.ProductID=Products.CategoryID

--2nd Example

Select Customers.CustomerID,Customers.ContactName,Orders.OrderID
from Customers
inner join Orders
on Customers.CustomerID=Orders.CustomerID

--Outer Join

--1st Example
select * from Customers
Select * from Orders

Select Employees.EmployeeID,Orders.OrderID
from Employees
full outer join Orders
on Employees.EmployeeID=Orders.EmployeeID

--2nd example
select Customers.CustomerID,Orders.OrderID,Customers.ContactName
from Customers
left outer join Orders
on Customers.CustomerID=orders.CustomerID


--Left join

--1st example

select Customers.CustomerID,Orders.OrderID,Customers.ContactName,Customers.City
from Customers
left join Orders
on Customers.CustomerID=Orders.CustomerID

--2nd example

select * from Employees
left outer join orders
on Employees.EmployeeID=Orders.EmployeeID


--Right Join
--1st example

select * from Employees
Right join orders
on Employees.EmployeeID=Orders.EmployeeID

--2nd example

select Customers.CustomerID,Orders.OrderID,Customers.ContactName,Customers.City
from Customers
right outer join Orders
on Customers.CustomerID=Orders.CustomerID

--self join

--1st example

select * from Customers


select  c.CustomerID,c.City,c.ContactName from
Customers c
left join Customers s
on s.CustomerID=c.CustomerID


--2nd Example




select o.orderID,o.OrderDate,o.ShippedDate 
from Orders o
right join Orders e
on o.OrderDate=e.OrderDate
order by OrderDate


--cross join
--1st example
select * from orders

select o.OrderID,o.EmployeeID,o.CustomerID
from orders o
cross join Customers

--2nd example

select * from Orders
cross join  Customers
where Customers.ContactTitle='owner'



--left anti join

--1st example
select  c.CustomerID,c.City,c.ContactName from
Customers c
left join Customers s
on s.CustomerID=c.CustomerID
where c.CustomerID is null;

--2nd example

select * from Employees
left outer join orders
on Employees.EmployeeID=Orders.EmployeeID

where orders.EmployeeID is null;




--right anti join 
-- 1st example
select  c.CustomerID,c.City,c.ContactName from
Customers c
right join Customers s
on s.CustomerID=c.CustomerID
where c.CustomerID is null;

--2nd example

select * from Employees
right outer join orders
on Employees.EmployeeID=Orders.EmployeeID

where orders.EmployeeID is null;