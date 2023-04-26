-- Conditional Control Statements:
-- Case
	select ProductName, UnitPrice,
	case 
		when UnitPrice between 0 and 14.99 then 'Cheap'
		when UnitPrice between 15 and 44.99 then 'Moderate'
		when UnitPrice between 45 and 60 then 'Expensive'
		else 'Very expensive'
		end as 'Comment on Product price range	'
	from products
-- If
		IF EXISTS (SELECT * FROM Products WHERE ProductID = 1)
		BEGIN
		UPDATE Products SET ProductName = 'New Product Name' WHERE ProductID = 1000;
		PRINT 'Product name updated successfully.';
		END
		ELSE
		BEGIN
		PRINT 'Product not found.';
		END
-- Write a query to retrieve the product name, unit price, and discount for all orders in the "Order Details" 
-- table, and apply a discount of 10% if the unit price is greater than or equal to 50.
	select P.ProductName,O.UnitPrice,O.Discount,
	case
		when round(O.UnitPrice,2) >= 50 then round(O.UnitPrice-0.9,2)
		else round(O.UnitPrice,2)
	end as 'Discounted'
	from [Order Details] O
	join Products P on p.ProductID=O.ProductID

--  Write a query to retrieve the product name, unit price, and supplier name for all products
-- in the "Products" table, and apply a case statement to display "Not available" if the supplier name is null.

select P.ProductName, P.UnitPrice,P.SupplierID,S.ContactName,
case 
	when S.ContactName is null then 'Not Avaiable'
	else 'Available'
end as description_

from products P 
inner join suppliers S
on S.supplierID=P.supplierId

select * from products
select * from suppliers
select * from shippers