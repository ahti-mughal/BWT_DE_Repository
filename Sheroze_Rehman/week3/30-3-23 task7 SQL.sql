USE northwind;

select distinct(productname),[Order Details].UnitPrice,Discount 
from [Order Details] 
inner join Products 
on [Order Details].ProductID=Products.ProductID

/*question 1*/
select DISTINCT products.ProductID,ProductName,products.UnitPrice,
CASE 
	WHEN Products.UnitPrice>=50 THEN Products.UnitPrice+Products.UnitPrice/10
	ELSE Products.UnitPrice
END AS DISCOUNTPercent
from Products
inner join [Order Details]
on [Order Details].ProductID=Products.ProductID
order by ProductName
select * from Suppliers where Region is null

/*question 2*/
select productname,unitprice,suppliers.ContactName,
CASE when ContactName is null then 'Not Available'
else 'Available'
end as Availability
from products inner join Suppliers on Products.SupplierID=Suppliers.SupplierID 
where region is not null