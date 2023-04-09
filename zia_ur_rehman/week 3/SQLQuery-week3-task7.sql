-- TASK 7

--Conditional Control Statements : CASE

SELECT ProductName, 
       UnitPrice, 
       CASE 
            WHEN UnitsInStock > 0 THEN 'In Stock' 
            ELSE 'Out of Stock' 
       END AS StockStatus
FROM Products;

SELECT ProductName, 
       UnitPrice, 
       CASE 
            WHEN UnitPrice > 50 THEN 'Expensive' 
            WHEN UnitPrice > 20 THEN 'Moderate' 
            ELSE 'Cheap' 
       END AS PriceCategory
FROM Products;

--Conditional Control Statements : IF 

DECLARE @ProductId int
SET @ProductId = 5

IF EXISTS(SELECT * FROM Products WHERE ProductID = @ProductId)
BEGIN
    SELECT ProductName, UnitPrice
    FROM Products 
    WHERE ProductID = @ProductId
END
ELSE
BEGIN
    PRINT 'Product not found'
END;


-- Write a query to retrieve the product name, unit price, and discount for all orders in the "Order Details" table, and apply a discount of 10% if the unit price is greater than or equal to 50.

SELECT PRO.ProductName, 
       OD.UnitPrice, 
       CASE 
         WHEN OD.UnitPrice >= 50 THEN OD.UnitPrice * 0.9 
         ELSE OD.UnitPrice 
       END AS DiscountedPrice
FROM Products PRO
JOIN [Order Details] OD ON PRO.ProductID = OD.ProductID;

-- Write a query to retrieve the product name, unit price, and supplier name for all products in the "Products" table, and apply a case statement to display "Not available" if the supplier name is null.

SELECT ProductName, 
       UnitPrice, 
       CASE 
         WHEN SUP.SupplierID IS NULL THEN 'Not available' 
         ELSE SUP.CompanyName 
       END AS SupplierName
FROM Products 
LEFT JOIN Suppliers SUP ON Products.SupplierID = SUP.SupplierID;
