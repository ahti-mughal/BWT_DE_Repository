SELECT FirstName, LastName, Email FROM Customers;


SELECT ProductName, UnitPrice, UnitsInStock FROM Products WHERE UnitPrice < 20 ORDER BY ProductName;


SELECT ProductName, UnitPrice, UnitsInStock FROM Products WHERE UnitPrice < 20 ORDER BY ProductName;


SELECT DISTINCT Country FROM Customers;


SELECT ProductName, UnitPrice, ISNULL(UnitsInStock, 0) AS 'Units in Stock' FROM Products;


SELECT ProductName AS 'Product Name', UnitPrice AS 'Price' FROM Products;


SELECT ProductName, UnitPrice FROM Products WHERE UnitPrice BETWEEN 10 AND 20;


SELECT ProductName, UnitPrice FROM Products WHERE CategoryID IN (1, 2, 3);


SELECT ProductName, UnitPrice FROM Products WHERE ProductName LIKE '%chai%';


SELECT ProductName, UnitsInStock FROM Products WHERE UnitsOnOrder IS NULL;


SELECT TOP 10 ProductName, UnitPrice FROM Products;


SELECT ProductName FROM Products WHERE CategoryID = 1
UNION
SELECT ProductName FROM Products WHERE CategoryID = 2;


SELECT ProductName FROM Products WHERE UnitsInStock > 20
INTERSECT
SELECT ProductName FROM Products WHERE UnitsOnOrder > 10;


SELECT ProductName FROM Products WHERE UnitsInStock > 20
EXCEPT
SELECT ProductName FROM Products WHERE UnitsOnOrder > 30;