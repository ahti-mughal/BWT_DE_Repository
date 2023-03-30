/*SELECT * 
FROM products 
WHERE unitprice = (
  SELECT MAX(unitprice) 
  FROM products
);*/

/*SELECT ProductName, UnitsOnOrder, (
  SELECT SUM(od.Quantity)
  FROM [Order Details] od
  WHERE od.ProductID = p.ProductID
) as TotalUnitsOrdered
FROM Products p
WHERE UnitsOnOrder > 0
ORDER BY TotalUnitsOrdered DESC;*/

/*SELECT *
FROM orders
WHERE OrderID IN (
  SELECT OrderID
  FROM [Order Details]
  WHERE UnitPrice > (
    SELECT AVG(UnitPrice)
    FROM [Order Details]
  )
);*/

/*SELECT ProductName, UnitPrice
FROM Products p
WHERE UnitPrice > (SELECT AVG(UnitPrice)
                   FROM Products
                   WHERE CategoryID = p.CategoryID)
ORDER BY ProductName;*/


/* CREATE VIEW US_Customers AS
 SELECT * FROM Customers
 WHERE Country = 'USA';*/

 /*ALTER VIEW US_Customers AS
 SELECT CustomerID, ContactName
 FROM Customers
 WHERE Country = 'USA';*/

 /*CREATE VIEW US_Order_Info AS
 SELECT O.OrderID, O.OrderDate, C.CustomerID, C.ContactName
 FROM Orders O
 JOIN Customers C ON O.CustomerID = C.CustomerID
 WHERE C.Country = 'USA';*/

 --DROP VIEW US_Order_Info;

 --CREATE CLUSTERED INDEX IX_Customers_CustomerID ON Customers(CustomerID);

 --CREATE NONCLUSTERED INDEX IX_Orders_CustomerID ON Orders(CustomerID);

