--Conditional Control Statements
	--IF
declare @customerID varchar = 'ALFKI';

if exists (select * from Customers where CustomerID = @customerID)
begin 
	print 'Customer Exist';
end
else
begin
	print 'Not Exist';
end

	--Case
select ProductName, UnitPrice,
	Case
		when UnitPrice < 10 then 'Cheap'
		When UnitPrice >=10 and UnitPrice < 50 then 'Moderate'
		Else 'Expensive'
	end as PriceCategory

from Products

--Write a query to retrieve the product name, unit price, and discount for all orders in the "Order Details" table, and apply a discount of 10% if the unit price is greater than or equal to 50.

select ProductID, UnitPrice,
	Case
		When UnitPrice > 50 then Discount * 0.1
		Else Discount
	end as DiscountApplied

from [Order Details]
order by UnitPrice Desc


--Write a query to retrieve the product name, unit price, and supplier name for all products in the "Products" table, and apply a case statement to display "Not available" if the supplier name is null.

select ProductName, UnitPrice, 
	case
		when SupplierID is null then 'Not Avaliable'
		else SupplierID
	end as SupplierExistence

from Products








