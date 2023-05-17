use Northwind;
select * from Products

-------CASE CONTROL STATEMENT
Select ProductName,
 CASE
WHEN  UnitPrice >=20 AND UnitPrice <=50 THEN 'Director'
WHEN UnitPrice >=60 AND UnitPrice <=100 THEN 'Senior Consultant'
Else 'Director'
END AS Designation
from Products;

--------if statement
IF (SELECT UnitPrice FROM Products WHERE ProductID='1') > 10
   BEGIN
      UPDATE Products
      SET UnitPrice = 100
      WHERE ProductID = 1
   END

 ------Write a query to retrieve the product name, unit price, and discount for all
 ------orders in the "Order Details" table, and apply a discount of 10% if the unit
 ------price is greater than or equal to 50.

 SELECT ProductName, UnitPrice,
       CASE WHEN UnitPrice >= 50 THEN 0.1 * UnitPrice 
	   ELSE 0
	   END AS Discount
FROM Products;


----Write a query to retrieve the product name, unit price, and supplier name for all products in the "Products" 
----table, and apply a case statement to display "Not available" if the supplier name is null.

SELECT ProductName, UnitPrice,
       CASE WHEN UnitsInStock IS NULL THEN 'Not available' ELSE UnitsInStock END AS SupplierName
FROM Products;