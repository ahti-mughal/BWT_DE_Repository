/******************Task 7**************************/
use northwind
/* Conditional Control Statements:
     • Case
     • If*/

SELECT c.ContactId,c.CompanyName, c.City, c.Country,
  CASE
     WHEN City IS NULL THEN '-----'
     ELSE 'available '
	 END AS ' status of city'
FROM Contacts c
ORDER BY [ status of city] 

SELECT p.ProductName, p.UnitPrice,
 
  CASE 
    WHEN UnitPrice > 50 THEN 'Expensive'
    WHEN UnitPrice < 20 THEN 'Reasonable'
    ELSE 'Neither expensive  Nor Reasonable'
  END AS ProductCost

FROM Products p

/*-------- IF STATEMENT --------*/
SELECT *
IF EXISTS(SELECT * FROM Products WHERE UnitPrice >= 100)
BEGIN
    UPDATE Products
    SET Discontinued = 'zero'
    WHERE UnitPrice>= 100 AND Discontinued = 0
END
ELSE
BEGIN
    UPDATE Products
    SET Discontinued = 'ONE'
    WHERE UnitPrice < 100 AND Discontinued = 1
END


/*Write a query to retrieve the product name, unit price, and discount for all orders in the "Order Details" table, 
and apply a discount of 10% if the unit price is greater than or equal to 50.*/

SELECT p.ProductName,p.UnitPrice,od.Discount,
CASE
   WHEN p.UnitPrice >= 50 THEN 0.1*p.UnitPrice
   ELSE p.UnitPrice
   END AS 'Discounted Amount'
FROM Products p full outer join [Order Details] od 
ON p.ProductID = od.ProductID


/*Write a query to retrieve the product name, unit price, and supplier name for all products in the "Products" table,
and apply a case statement to display "Not available" if the supplier name is null.*/

SELECT p.ProductName, p.UnitPrice,
  CASE 
    WHEN S.CompanyName IS NULL THEN 'Not available'
    ELSE S.CompanyName
  END AS SupplierName 
FROM Products p
LEFT JOIN Suppliers S ON p.SupplierID = S.SupplierID

