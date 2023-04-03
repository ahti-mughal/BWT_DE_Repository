Use Northwind

/*-Task 7
1 - Conditional Control Statements:
     • Case
     • If*/

SELECT * FROM Products

SELECT p.ProductName, p.UnitPrice,
  CASE 
    WHEN UnitPrice > 40 THEN 'Expensive'
    WHEN UnitPrice < 40 THEN 'Cheap'
    ELSE 'Neither Cheap Nor Exp'
  END AS ProductCost
FROM Products p;

SELECT 
    OrderID, 
    CustomerID, 
    CASE 
        WHEN freight < 50 THEN 'Low' 
        WHEN freight BETWEEN 50 AND 100 THEN 'Medium' 
        ELSE 'High' 
    END AS freight_category 
FROM 
    Orders;


SELECT od.OrderID, od.Quantity,
  CASE
    WHEN od.Quantity >= 50 THEN 'Large Order'
    WHEN od.Quantity >= 35 THEN 'Medium Order'
    ELSE 'Small Order'
  END AS OrderSize
FROM [Order Details] od


/*1 1 - Write a query to retrieve the product name, unit price, 
and discount for all orders in the "Order Details" table, 
and apply a discount of 10% if the unit price is greater than or equal to 50.*/

SELECT * FROM [Order Details]


SELECT  p.ProductName,od.UnitPrice,od.Discount,
CASE 
    WHEN od.UnitPrice>=50 THEN od.UnitPrice/100*10
	ELSE od.UnitPrice
	END AS DiscountedPrice
FROM [Order Details] od inner join Products p ON od.ProductID=p.ProductID


/*Write a query to retrieve the product name, unit price, and supplier name for all products in the "Products" table,
and apply a case statement to display "Not available" if the supplier name is null.*/

SELECT p.ProductName, p.UnitPrice,
  CASE 
    WHEN Sn.CompanyName IS NULL THEN 'Not available'
    ELSE Sn.CompanyName
  END AS SupplierName 
FROM Products p
LEFT JOIN Suppliers Sn ON p.SupplierID = Sn.SupplierID;