/*
Write a query to retrieve the product name, unit price, and discount for all orders in the "Order Details" table, 
and apply a discount of 10% if the unit price is greater than or equal to 50.
*/

select p.ProductName, od.UnitPrice,
case when od.UnitPrice >= 50 then od.UnitPrice * 0.9
else od.UnitPrice end as discounted_price
from [Order Details] od inner join Products p on od.ProductID=p.ProductID order by od.UnitPrice DESC;


/*
Write a query to retrieve the product name, unit price, and supplier name for all products in the "Products" table, 
and apply a case statement to display "Not available" if the supplier name is null
*/

select p.ProductName, p.UnitPrice,
	case
	when s.SupplierID is null then 'not available'
	else s.SupplierID
	end as Suppliers_name
from Products p left join Suppliers s
on p.SupplierID=s.SupplierID



