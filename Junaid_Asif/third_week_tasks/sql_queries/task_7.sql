USE northwind;

/*Write a query to retrieve the product name, unit price, and discount for all orders
in the "Order Details" table, and apply a discount of 10% if the unit price is greater than or equal to 50.*/


SELECT P.ProductName, OD.UnitPrice, 
  CASE WHEN OD.UnitPrice >= 50 THEN (OD.UnitPrice * 0.9) 
  ELSE OD.UnitPrice END AS DiscountedPrice,
  OD.Discount
FROM Products P
INNER JOIN [Order Details] OD ON P.ProductID = OD.ProductID;


/*Write a query to retrieve the product name, unit price, and supplier name for all products in
the "Products" table, and apply a case statement to display "Not available" if the supplier name is null.*/


SELECT P.ProductName, P.UnitPrice,
  CASE WHEN S.CompanyName IS NULL THEN 'Not available' 
  ELSE S.CompanyName END AS SupplierName
FROM Products P
INNER JOIN Suppliers S ON P.SupplierID = S.SupplierID;



