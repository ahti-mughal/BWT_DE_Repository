--Conditional Control Statement

SELECT ProductID, ProductName, UnitPrice, UnitsInStock,  
CASE
    WHEN UnitsInStock <= 20 THEN 'Stock Low'
    WHEN UnitsInStock >= 20 THEN 'Stock Full'
END AS Stock_Status
FROM Products;


--1 - Write a query to retrieve the product name, unit price, and discount for all orders in the "Order Details" table, and apply a discount of 10% if the unit price is greater than or equal to 50.

SELECT productname, od.UnitPrice ,
CASE 
	when od.UnitPrice >=50 then od.UnitPrice*0.9
	else od.UnitPrice
END discounted_price
FROM [Order Details] as od
INNER JOIN Products on products.ProductID = od.ProductID;


--2 - Write a query to retrieve the product name, unit price, and supplier name for all products in the "Products" table, and apply a case statement to display "Not available" if the supplier name is null.

SELECT ProductName, UnitPrice,
CASE 
	when ContactName is null then 'Not available'
	else ContactName
END SupplierName
FROM Products
INNER JOIN Suppliers on Products.SupplierID = Suppliers.SupplierID;
