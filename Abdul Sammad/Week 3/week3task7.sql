/* - Conditional Control Statements:
     • Case
     • If
 */

 Select Region,
 Case when Region = 'WA' then 'Western Austrailia'
 else 'Region Not Found'
 end as Regions
 from Employees ;

 
/* 1 - Write a query to retrieve the product name, unit price, and discount for all orders in the "Order Details" table, and apply a discount of 10% if the unit price is greater than or equal to 50. */

select ProductName, UnitPrice, 
case when UnitPrice > 49 then (UnitPrice - (UnitPrice/10))
else UnitPrice
End as Discounted_NewPrice
from Products;

/* 2 - Write a query to retrieve the product name, unit price, and supplier name for all products in the "Products" table, and apply a case statement to display "Not available" if the supplier name is null. */

select P.ProductName, P.UnitPrice,
Case when S.CompanyName = Null then 'Not Available'
else S.companyName 
end as CompanyName
from Products P full outer join Suppliers S on P.SupplierID = S.SupplierID;