USE Northwind


SELECT OrderID, Quantity,
CASE
    WHEN Quantity > 30 THEN 'The quantity is more than 30'
    WHEN Quantity = 30 THEN 'The quantity is 30'
    ELSE 'The quantity is under 30'
END AS QuantityDescription
FROM [Order Details];


SELECT ProductName, UnitsOnOrder,UnitPrice,
CASE
    WHEN UnitsOnOrder >= 60 THEN 'High-Demand Product'
    WHEN UnitsInStock >= 20 THEN 'Average-Demand Product'
    ELSE 'Low Demand Product'
END AS PrductDemand
FROM Products;


Select 
 CASE
WHEN UnitPrice >=180  THEN 'Expensive'
WHEN UnitPrice >=50 AND UnitPrice <180 THEN 'Reasonable'
Else 'Cheap'
END AS Price,
Min(UnitPrice) as MinimumPrice,
Max(UnitPrice) as MaximumPrice
from Products
Group By
CASE
WHEN UnitPrice >=180  THEN 'Expensive'
WHEN UnitPrice >=50 AND UnitPrice <180 THEN 'Reasonable'
Else 'Cheap'
END


SELECT ContactName, City, Country,CompanyName
FROM Customers
ORDER BY
(CASE
    WHEN City IS NULL THEN Country
    ELSE City
END);


SELECT ProductName,Products.UnitPrice,Discount,
case
when Products.UnitPrice>=50 then   Products.UnitPrice*0.1
ELSE Products.UnitPrice
End as Price
FROM  Products
join [Order Details] on [Order Details].ProductID=Products.ProductID;


SELECT ProductName,UnitPrice,ContactName,
       CASE WHEN 
	   ContactName  is null THEN 'Not  Available'
       END AS description
FROM   Products
right JOIN   Suppliers ON Products.SupplierID = Suppliers.SupplierID;