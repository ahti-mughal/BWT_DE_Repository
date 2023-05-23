--Query to retrieve the product name, unit price, and discount for all orders in the "Order Details"
--table, and apply a discount of 10% if the unit price is greater than or equal to 50:
SELECT ProductName, UnitPrice,
    CASE
        WHEN UnitPrice >= 50 THEN UnitPrice * 0.9
        ELSE UnitPrice
    END AS DiscountedPrice
FROM Products
INNER JOIN OrderDetails ON Products.ProductID = OrderDetails.ProductID


--Query to retrieve the product name, unit price, and supplier name for all products in the "Products" table, and apply a 
--case statement to display "Not available" if the supplier name is null:

SELECT ProductName, UnitPrice,
    CASE
        WHEN SupplierID IS NULL THEN 'Not available'
        ELSE Suppliers.CompanyName
    END AS SupplierName
FROM Products
LEFT JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
