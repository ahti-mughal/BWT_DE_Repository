/*  Conditional Control Statements:

The SQL CASE Expression
The CASE expression goes through conditions and returns a value when the first condition is met (like an if-then-else statement). So, once a condition is true, it will stop reading and return the result. If no conditions are true, it returns the value in the ELSE clause.

If there is no ELSE part and no conditions are true, it returns NULL.
*/
--EXAMPLE 1
SELECT OrderID, Quantity,
CASE
    WHEN Quantity > 30 THEN 'The quantity is greater than 30'
    WHEN Quantity = 30 THEN 'The quantity is 30'
    ELSE 'The quantity is under 30'
END AS QuantityText
FROM [Order Details];




--Example 2
SELECT OrderID,UnitPrice,
CASE
    WHEN UnitPrice>=200 then 'Expensive Products'
	WHEN UnitPrice>=50 AND UnitPrice <200 then 'Affordable Products'
	ELSE 'Cheap Products'
END AS Products_Prize
FROM [Order Details]



/* IF FUNCTION
The IF() function returns a value if a condition is TRUE, or another value if a condition is FALSE.

Syntax
IF(condition, value_if_true, value_if_false)

*/

--Example 1
--Return 5 if the condition is TRUE, or 10 if the condition is FALSE:
SELECT IIF(500<1000, 5, 10);

--Example 2
--Return "HIGH_QUANTITY" if the condition is TRUE, or "LOW_QUANTITY" if the condition is FALSE:

SELECT OrderID, Quantity, IIF(Quantity>10, 'HIGH_QUANTITY', 'LOW_QUANTITY')
FROM [Order Details];


/*1 - Write a query to retrieve the product name, unit price,
and discount for all orders in the "Order Details" table,
and apply a discount of 10% if the unit price is greater than or equal to 50.
*/

SELECT ProductName,P.UnitPrice, OD.Discount,
CASE
    WHEN OD.UnitPrice >= 50 THEN OD.Discount * 0.1
	ELSE OD.Discount
END AS Discount_Applied
FROM Products P
INNER JOIN [Order Details] OD ON OD.ProductID = P.ProductID



/* 2 - Write a query to retrieve the product name, unit price, 
and supplier name for all products in the "Products" table, 
and apply a case statement to display "Not available" if the supplier name is null.
*/

SELECT p.ProductName,p.UnitPrice,s.ContactName,
CASE 
   WHEN s.ContactName IS NULL THEN 'Not Available'
   ELSE s.ContactName
END AS Supplier_Name
FROM Products p
INNER JOIN Suppliers s
ON s.SupplierID=p.SupplierID