--Task 4 week3

--  Write a query to show a list of customers and their corresponding orders.

select P.ProductName,C.ContactName from Customers as C
join Orders as O on C.CustomerID = O.CustomerID
join [Order Details] as OD on OD.OrderID = O.OrderID
join Products as P on P.ProductID = OD.ProductID; 

-- Write a query to show a list of employees and their corresponding managers:
select e1.FirstName as employee,e2.FirstName as manager
from Employees e1
inner join Employees e2
on e1.ReportsTo = e2.EmployeeID;


-- Write a query to show a list of customers who have not placed any orders.
select C.ContactName from Customers as C
full outer join Orders as O
on C.CustomerID = O.CustomerID
where O.OrderID is null 



--Write a query to show a list of employees and their corresponding territories, including those employees who have no territories assigned.

select E.FirstName,T.TerritoryDescription from Employees as E
left join EmployeeTerritories as ET
on E.EmployeeID = ET.EmployeeID
left join Territories as T
on ET.TerritoryID = T.TerritoryID


