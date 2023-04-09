--Using Northwind Database 

USE Northwind

-- Case Statement in SQL

/* The CASE expression goes through conditions and returns a value when the first condition is met (like an if-then-else statement). 
So, once a condition is true, it will stop reading and return the result. 
If no conditions are true, it returns the value in the ELSE clause.

If there is no ELSE part and no conditions are true, it returns NULL. */

--Example 1

Select FirstName, LastName, TitleOfCourtesy,
CASE TitleofCourtesy
when 'Ms.' then 'misstress'
when 'Dr.' then 'doctor'
when 'Mr.' then 'mister'
Else 'Mrs.'
end
from Employees

--Example 2
Select CompanyName,
ContactName,
ContactTitle,
city,
(case city 
when 'Berlin' then 'Germany'
when 'London' then 'UK'
else City
end) 
from Customers

 
 --Queires

--1. Write a query to retrieve the product name, unit price, and discount for all orders in the "Order Details" table, and apply a discount of 10% if the unit price is greater than or equal to 50.
select Productname,o.UnitPrice,p.UnitPrice, o.discount,
(case when o.Unitprice>=50 then  o.UnitPrice*0.9
else 0
end) as discounted_Value
from Products as p
inner join [Order Details] as o on o.ProductID=p.ProductID;




--2.Write a query to retrieve the product name, unit price, and supplier name for all products in the "Products" table, and apply a case statement to display "Not available" if the supplier name is null.

select p.ProductName,p.UnitPrice,
(case when s.SupplierID is null then 'Not Available'
else  ContactName
end) as New_column
from Suppliers as  s
inner join Products as p on s.SupplierID=p.SupplierID
