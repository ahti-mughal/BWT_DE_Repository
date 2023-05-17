--Write a query to retrieve the names
--of all products that have been ordered more than 50 time.
select * from orders
select * from products

select productname,unitsonorder as orders
from products 
where UnitsOnOrder in (select UnitsOnOrder from  Products  where UnitPrice>50)
order by unitsonorder 


--Write a query to retrieve the names
--of all products that have been ordered at least once.

select productname,unitsonorder as orders
from products 
where UnitsOnOrder in (select UnitsOnOrder from  Products  where UnitPrice>=1)
order by unitsonorder 

--Create a view that shows the total revenue
--generated by each category.
select Categoryname ,sum(Products.UnitPrice*quantity) as Revenue
from [Order Details] join Products
on Products.ProductID=[Order Details].ProductID
join Categories on Products.CategoryID=Categories.CategoryID
group by CategoryName

