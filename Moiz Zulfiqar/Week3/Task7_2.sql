USE northwind

-- 1 - Write a query to retrieve the product name, unit price, and discount for all orders in the "Order Details" table, 
-- and apply a discount of 10% if the unit price is greater than or equal to 50.

-- SELECT ProductName, Products.UnitPrice, 
--    CASE WHEN Products.UnitPrice >= 50 THEN [Order Details].Discount * 0.1 ELSE [Order Details].Discount END AS Discount
-- FROM [Order Details]
-- JOIN Products ON [Order Details].ProductID = Products.ProductID;

-- 2 - Write a query to retrieve the product name, unit price, and supplier name for all products in the "Products" table, 
-- and apply a case statement to display "Not available" if the supplier name is null.

SELECT ProductName, UnitPrice,
   CASE WHEN Suppliers.CompanyName IS NULL THEN 'Not available' ELSE Suppliers.CompanyName END AS SupplierName
FROM Products
LEFT JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID;


