                                    -- Task 7--


                             --Conditional Statements--

--Case Statements


Select * from Products

select ProductName,Unitprice ,unitsinstock,

Case 
     when unitsonorder > unitsinstock then 'Ready to ship order'
	 when unitsonorder < unitsinstock then 'SHipment not ready'

	  else 'Half shipment ready'
	end as unit_shipment
from products;


--IF statements

use NORTHWND

Declare @sales int =73;
declare @results varchar(23);

if @sales>=60
      begin
	  set @results='Good sales'
	 end
	 else
	 begin
	set @results='Bad sales'

end

select 'Shop sales ' + @results  AS results;



/*Write a query to retrieve the product name, unit price, 
and discount for all orders in the "Order Details" table, 
and apply a discount of 10% if the unit price is greater than or equal to 50. */
use NORTHWND



select p.productname  ,
     od.UnitPrice ,
   case 
   when 
   od.UnitPrice >=50 
   then Discount *1.1
    else Discount
     end as Discount
     from Products p
     join [Order Details] od on 
      p.productid=od.productid


--Write a query to retrieve the product name, 
--unit price, and supplier name for all products in the "Products" table, 
--and apply a case statement to display "Not available" if the supplier name is null.

select * from Suppliers
select * from Products

select p.productname  ,
     p.UnitPrice ,

	 s.companyname,

   case 
   when 
    s.companyname is null
   then 'Not available'
    else 'available'
     end as Suppliers
     from Products p
     join Suppliers s  on 
      p.supplierid=s.supplierid









