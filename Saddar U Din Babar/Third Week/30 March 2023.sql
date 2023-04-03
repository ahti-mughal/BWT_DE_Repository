-- 1 - Conditional Control Statements:
--      • Case
--      • If

SELECT 
    product_name, 
    price, 
    quantity, 
    CASE 
        WHEN price > 100 THEN 'expensive' 
        WHEN price < 50 THEN 'inexpensive' 
        ELSE 'moderately priced' 
    END AS price_category 
FROM product;

-- Write a query to retrieve the product name, unit price, 
-- and discount for all orders in the "Order Details" table, 
-- and apply a discount of 10% if the unit price is greater 
-- than or equal to 50.

SELECT 
    ProductName, 
    UnitPrice, 
    CASE 
        WHEN UnitPrice >= 50 THEN UnitPrice * 0.9 
        ELSE UnitPrice 
    END AS DiscountedPrice
FROM 
    OrderDetails 
    JOIN Products ON OrderDetails.ProductID = Products.ProductID;
    
    
--     2 - Write a query to retrieve the product name, unit price, 
--     and supplier name for all products in the "Products" table, 
--     and apply a case statement to display "Not available" if the 
--     supplier name is null.

SELECT ProductName, UnitPrice, 
       CASE 
          WHEN SupplierName IS NULL THEN 'Not available'
          ELSE SupplierName
       END AS SupplierName
FROM Products;

