/*select p.ProductName,COUNT(od.ProductID)  from Products as p
inner join [Order Details] as od on p.ProductID=od.ProductID
group by p.ProductName
having COUNT(od.ProductID)>50*/

/*select p.ProductName,COUNT(od.ProductID)  from Products as p
inner join [Order Details] as od on p.ProductID=od.ProductID
group by p.ProductName
having COUNT(distinct od.ProductID)>0*/

/*create view total_revenue as 
select distinct c.CategoryName, sum(od.UnitPrice * od.Quantity) as TotalRevenue
from Categories as c
inner join Products as p on c.CategoryID=p.CategoryID
inner join [Order Details] as od on od.ProductID=p.ProductID
group by c.CategoryName*/

