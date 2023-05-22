
--1

SELECT O_ID, C_ID, O_Date, Freight,
       CASE 
           WHEN Freight < 50 THEN 'Low'
           WHEN Freight >= 50 AND Freight < 100 THEN 'Medium'
           ELSE 'High'
       END AS FreightCategory
FROM Order;


--2 
IF EXISTS(SELECT * FROM Order WHERE Freight >= 100)
BEGIN
    UPDATE Order
    SET ShipVia = 2
    WHERE Freight >= 100;
END
ELSE
BEGIN
    UPDATE Order
    SET ShipVia = 1
    WHERE Freight < 100;
END




-- Write a query to retrieve the product name, unit price,and discount for all orders in the "Order Details" table,and apply a discount of 10% if the unit price is greaterthan or equal to 50.


select productname, od.UnitPrice ,
case 
	when od.UnitPrice >=50 then od.UnitPrice*0.9
	else od.UnitPrice
end discounted_price
from [Order Details] as od
inner join Products on products.ProductID = od.ProductID



-- Write a query to retrieve the product name,unit price, and supplier name for all products in the "Products" table, and apply a case statement todisplay "Not available" if the supplier name is null.

select ProductName, UnitPrice,
case 
	when ContactName is null then 'Not available'
	else ContactName
end SupplierName
from Products
inner join Suppliers on Products.SupplierID = Suppliers.SupplierID