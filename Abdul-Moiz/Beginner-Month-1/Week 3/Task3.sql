use Northwind

-- INNER JOIN 
select ProductName,CategoryName
from Products as P
inner join Categories as C
on P.CategoryID = C.CategoryID

-- INNER JOIN through USING (doesnt work on SSMS)
select ProductName,CategoryName
from Products as P
inner join Categories as C
using (CategoryID) ;

-- OUTER JOIN and Its 3 types 
-- Left Join
select  OD.ProductID,O.ShipRegion 
from Orders as O
left join [Order Details] as OD
on O.OrderID = OD.OrderID

-- Right  Join
select  OD.ProductID,O.ShipRegion 
from Orders as O
right join [Order Details] as OD
on O.OrderID = OD.OrderID

-- Full Join 
select  E.Region,O.ShipRegion 
from Orders as O
full outer join Employees as E
on O.EmployeeID = E.EmployeeID

-- LEFT ANTI JOIN 
select OD.ProductID,O.ShipName from Orders as O
left join [Order Details] as OD
on O.OrderID = OD.OrderID
where O.ShipPostalCode is null

-- RIGHT ANTI JOIN
select OD.ProductID,O.ShipName from Orders as O
right join [Order Details] as OD
on O.OrderID = OD.OrderID
where O.ShipPostalCode is null


--CROSS JOIN
select Employees.EmployeeID, EmployeeTerritories.TerritoryID
from Employees
CROSS JOIN EmployeeTerritories;


-- SELF JOIN
select e1.FirstName  + e1.LastName as Employee1,
       e2.FirstName + e2.LastName as Employee2
from Employees e1
join Employees e2 on e1.ReportsTo = e2.ReportsTo
where e1.EmployeeID <> e2.EmployeeID

