-- Conditional Control Statements
SELECT ProductID, ProductName, UnitPrice, UnitsInStock,  
CASE
    WHEN UnitsInStock <= 20 THEN 'Stock Low'
    WHEN UnitsInStock >= 20 THEN 'Stock Full'
END AS Stock_Status
FROM Products; 

-- Write a query to retrieve the product name, unit price, and discount for all orders in the "Order Details" table, and apply a discount of 10% if the unit price is greater than or equal to 50.
SELECT Products.ProductName, Products.UnitPrice, [Order Details].Discount,
CASE
    WHEN [Order Details].UnitPrice >= 50 THEN [Order Details].Discount * 0.1
    ELSE [Order Details].Discount
    END AS Discount_Applied
FROM Products
INNER JOIN [Order Details]
ON [Order Details].ProductID = Products.ProductID;

-- Write a query to retrieve the product name, unit price, and supplier name for all products in the "Products" table, and apply a case statement to display "Not available" if the supplier name is null.
SELECT Products.ProductName, Products.UnitPrice, Suppliers.ContactName,
CASE
    WHEN Suppliers.ContactName IS NULL THEN 'Not Available'
    ELSE Suppliers.ContactName
    END AS Supplier_Name
FROM Products
INNER JOIN Suppliers 
ON Suppliers.SupplierID = Products.SupplierID 