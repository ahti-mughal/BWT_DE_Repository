/*30_March_2023 Task # 7 Added*/
/*MEER DANISH*/

/*Write a query to retrieve the product name, unit price, and discount for all orders in the "Order Details" table, 
and apply a discount of 10% if the unit price is greater than or equal to 50.*/

select ProductName,[Order Details].UnitPrice,
 Case
   when [Order Details].UnitPrice >= 50 Then [Order Details].UnitPrice*0.9
   Else [Order Details].UnitPrice
 END As Discounted_PRICE
 from [Order Details] join Products
ON [Order Details].ProductID = Products.ProductID

/* Write a query to retrieve the product name, unit price, and supplier name for all products in the "Products" table,
and apply a case statement to display "Not available" if the supplier name is null.*/

Select ProductName,UnitPrice,
Case
  When Suppliers.ContactName is Null then 'Not available'
 Else Suppliers.ContactName
End As Supplier_Name
from Products join Suppliers
ON Products.SupplierID = Suppliers.SupplierID

