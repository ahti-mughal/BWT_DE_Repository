use Northwind
-- Q1 Write a query to show a list of customers and their corresponding orders.
select * from Customers
select * from orders
select c.CustomerID from customers as c
left join orders as o             -- here we used left join because we want to get a list of all customers whether they have placed order or not. 
								  --If we use inner join we will only get the list of customers who have places the order. We wouldn't be able to see those customers who haven;t placed the order yet
on(c.CustomerID = o.CustomerID)   

-- Q2 Write a query to show a list of employees and their corresponding managers:
select e.EmployeeID,e.FirstName,e.LastName, m.EmployeeID as ManagerID, m.FirstName as [Manager First Name], m.LastName as [Manager Last Name] from Employees as e
left join employees as m
on(e.ReportsTo =  m.EmployeeID)

-- Q3 Write a query to show a list of customers who have not placed any orders
select c.CustomerID, c.ContactName from customers as c
where c.CustomerID not in(select CustomerID from orders)

--Q4 Write a query to show a list of employees and their corresponding territories, including those employees who have no territories assigned.
select empy.EmployeeID, empy.FirstName, empy.City, empytt.TerritoryID from Employees as Empy
left join EmployeeTerritories as empytt
on (empy.EmployeeID = empytt.EmployeeID)

select empytt.EmployeeID , empytt.TerritoryID, t.TerritoryDescription from Territories as t
left join EmployeeTerritories as empytt on (empytt.TerritoryID = t.TerritoryID)