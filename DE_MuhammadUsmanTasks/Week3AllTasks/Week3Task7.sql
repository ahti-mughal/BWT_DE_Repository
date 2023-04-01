Use Northwind

/*-Task 7

1 - Conditional Control Statements:
     • Case
     • If*/

select * from Products

SELECT p.ProductName, p.UnitPrice,
 
  CASE 
    WHEN UnitPrice > 40 THEN 'Expensive'
    WHEN UnitPrice < 40 THEN 'Cheap'
    ELSE 'Neither Cheap Nor Exp'
  END AS ProductCost

FROM Products p

SELECT od.OrderID, od.Quantity,
  CASE
    WHEN od.Quantity >= 50 THEN 'Large Order'
    WHEN od.Quantity >= 35 THEN 'Medium Order'
    ELSE 'Small Order'
  END AS OrderSize
FROM [Order Details] od


/*1 1 - Write a query to retrieve the product name, unit price, 
and discount for all orders in the "Order Details" table, 
and apply a discount of 10% if the unit price is greater than or equal to 50.*/

select * from [Order Details]


select  p.ProductName,od.UnitPrice,od.Discount,
Case 
    when od.UnitPrice>=50 then od.UnitPrice/100*10
	else od.UnitPrice
	end as DiscountedPrice
from [Order Details] od inner join Products p on od.ProductID=p.ProductID


/*Write a query to retrieve the product name, unit price, and supplier name for all products in the "Products" table,
and apply a case statement to display "Not available" if the supplier name is null.*/

SELECT p.ProductName, p.UnitPrice,
  CASE 
    WHEN Sn.CompanyName IS NULL THEN 'Not available'
    ELSE Sn.CompanyName
  END AS SupplierName 
FROM Products p
LEFT JOIN Suppliers Sn ON p.SupplierID = Sn.SupplierID;
