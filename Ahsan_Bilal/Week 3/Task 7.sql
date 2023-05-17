use Northwind

/*####################################
	Conditional Control Statements:
#####################################*/

--======= Case ==========

select ProductName,UnitPrice,
case 
	when UnitPrice <=10 then 'Low'
	when UnitPrice >10 and UnitPrice <=50 then 'Medium'
	else 'High'
end price_range
from products


--======= IF ==========

IF (SELECT COUNT(*) FROM Customers WHERE Country = 'USA') > 50
BEGIN
    SELECT CompanyName, ContactName, Country
    FROM Customers
    WHERE Country = 'USA'
    ORDER BY CompanyName;
END
ELSE
BEGIN
    PRINT 'There are not enough customers in the USA.';
END

/*###################################################
1 - Write a query to retrieve the product name, unit price,
and discount for all orders in the "Order Details" table,
and apply a discount of 10% if the unit price is greater
than or equal to 50.
###################################################*/

select productname, od.UnitPrice ,
case 
	when od.UnitPrice >=50 then od.UnitPrice*0.9
	else od.UnitPrice
end discounted_price
from [Order Details] as od
inner join Products on products.ProductID = od.ProductID



/*###########################################
2 - Write a query to retrieve the product name,
unit price, and supplier name for all products in
the "Products" table, and apply a case statement to
display "Not available" if the supplier name is null.
#################################################*/

select ProductName, UnitPrice,
case 
	when ContactName is null then 'Not available'
	else ContactName
end SupplierName
from Products
inner join Suppliers on Products.SupplierID = Suppliers.SupplierID

