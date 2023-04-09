/* Query to retrieve product name, unit price, and discount for all orders in the "Order Details" table,
and apply a discount of 10% if the unit price is greater than or equal to 50 */

SELECT
distinct Products.ProductName,
[Order Details].UnitPrice,
(CASE
WHEN [Order Details].UnitPrice >= 50 THEN [Order Details].UnitPrice * 0.1
ELSE 0
END) AS TotalDiscount
FROM
[Order Details]
INNER JOIN Products ON [Order Details].ProductID = Products.ProductID
ORDER BY TotalDiscount desc;

/* Query to retrieve product name, unit price, and supplier name for all products in the "Products" table,
and apply a case statement to display "Not available" if the supplier name is null */
SELECT
Products.ProductName,
Products.UnitPrice,
(CASE
WHEN Suppliers.SupplierID IS NULL THEN 'Not Available'
ELSE Suppliers.ContactName
END) AS SupplierName
FROM
Products
LEFT JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID;


select * from Suppliers;