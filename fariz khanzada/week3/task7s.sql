/*to retrieve the product name, unit price, and discount for all orders in the "Order Details" table, and apply a discount of 10% if the unit price is greater than or equal to 50.*/

SELECT Products.ProductName, OrderDetails.UnitPrice, 
    CASE WHEN OrderDetails.UnitPrice >= 50 THEN OrderDetails.Discount * 1.1 ELSE OrderDetails.Discount END AS Discount
FROM Products
JOIN [Order Details] AS OrderDetails ON Products.ProductID = OrderDetails.ProductID;



/*retrieve the product name, unit price, and supplier name for all products in the "Products" table, and apply a case statement to display "Not available" if the supplier name is null.
*/

SELECT 
  Products.ProductName, 
  Products.UnitPrice, 
  CASE 
    WHEN Suppliers.SupplierID IS NULL THEN 'Not available' 
    ELSE Suppliers.CompanyName 
  END AS SupplierName
FROM Products
LEFT JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID;

