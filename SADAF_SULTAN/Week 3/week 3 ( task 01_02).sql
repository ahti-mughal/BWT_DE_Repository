/******************* TASK #  1 *********************

Practice following DQL commands in SSMS:	 */
    
/************ SELECT ,WHERE and ORDER BY Clasue **************/
SELECT *
FROM [Order Details]
WHERE Discount >0 AND Quantity BETWEEN 9 AND 30
ORDER BY Quantity

/****************** DISTINCT Clause *********************/
SELECT DISTINCT ProductName, UnitPrice, UnitsOnOrder,ReorderLevel
FROM Products
WHERE ReorderLevel BETWEEN 1 AND 10
ORDER BY ReorderLevel

/********** COLUMN ALIASES ***************/
SELECT TerritoryID, TerritoryDescription AS TerritoryDetails 
FROM Territories

/**********************TOP N Clause************************************/
SELECT TOP 20*
FROM Orders
ORDER BY EmployeeID

SELECT TOP 10 *
FROM EmployeeTerritories
WHERE EmployeeID = 5
ORDER BY TerritoryID DESC


/********************************** PREDICATORS ********************/
/* between */
SELECT OrderID,CustomerID, ShipName 
FROM Orders
WHERE OrderID BETWEEN 10270 AND 10300
/* IN */
 SELECT * FROM Customers
 WHERE Country IN ('mexico','USA','spain')
 /*like */
 SELECT * FROM Categories
 WHERE  CategoryName LIKE 'C%' 

 /* IS NULL */
 SELECT DISTINCT ShipName, ShipAddress,shipCity, ShipRegion FROM Orders
 WHERE ShipRegion IS NULL
 ORDER BY ShipName
 
 /************** SET OPERATORS *********************/
 /*UNION */
SELECT *
FROM Customers
WHERE Country = 'germany' AND Region IS NULL
UNION
SELECT *
FROM Customers
WHERE Country = 'Mexico' AND Region IS NULL

/* INTERSECT */
SELECT *
FROM Customers
WHERE Country = 'germany' AND Region IS NULL
INTERSECT
SELECT *
FROM Customers
WHERE City LIKE 'A%'

/*EXCEPT */
SELECT *
FROM Customers
WHERE Country = 'germany' AND Region IS NULL
EXCEPT
SELECT *
FROM Customers
WHERE Country = 'Mexico' AND Region IS NULL

/******************** TASK 2 *************************/

------------ 1--------------
SELECT ProductName,UnitPrice,UnitsInStock FROM Products
WHERE UnitPrice < $20
ORDER BY ProductName

SELECT OrderID,CustomerID,OrderDate FROM Orders

--------------2------------
SELECT OrderID,CustomerID,OrderDate FROM Orders
WHERE CustomerID IS Null
ORDER BY OrderDate

-------------------- 3 ---------------
SELECT DISTINCT C.CategoryName, O.ShipCountry
FROM Categories AS C
JOIN 
Products AS P 
ON C.CategoryID = P.CategoryID
JOIN 
[Order Details] AS OD
ON P.ProductID =OD.ProductID
JOIN Orders AS O
ON OD.OrderID = O.OrderID 