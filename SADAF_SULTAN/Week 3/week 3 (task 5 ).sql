/********************Task5  ***********************/
/*1 - Sub Queries:
     • Single Row Sub Queries
     • Multi Row Sub Queries
     • Nested Sub Queries
*/

/******** Single Row Sub Queries ********/

---- the query which return  only single row of data 
SELECT* FROM Products 
WHERE UnitPrice > (SELECT min(UnitPrice) AS Minimum_Price FROM Products)


SELECT  TitleOfCourtesy,FirstName,LastName 
FROM Employees
WHERE Extension>=(SELECT MAX(Extension)  FROM Employees )


/******** Multi Row Sub Queries ********/
----- the query that return multiple rows of data 
SELECT* FROM Orders
SELECT OrderID,OrderDate , ShipName, ShipCountry FROM Orders WHERE CustomerID IN 
(SELECT CustomerID FROM Customers WHERE Country IN 
(SELECT Country FROM Suppliers ))

/******** Nested Sub Queries ********/
------queries within the queries
SELECT * FROM Orders WHERE CustomerID IN 
(SELECT CustomerID FROM Customers WHERE Country IN 
(SELECT Country FROM Suppliers WHERE SupplierID IN 
(SELECT SupplierID FROM Products  WHERE Discontinued = 0)))


/******** Co-related sub Queries ********/
----A correlated subquery is a subquery that uses the values of the outer query
SELECT ProductID,ProductName,UnitPrice
FROM Products p
WHERE
    UnitsInStock IN (
        SELECT MAX (UnitPrice)
        FROM Products p2
        WHERE p2.ProductID = p.ProductID
        GROUP BY p2.ProductName)
ORDER BY
    UnitsOnOrder,
    ProductName;


/*2 - Views:
     • Purpose Of Views
     • Creating , Altering and Dropping Views
     • Simple and Complex Views*/

/******** Purpose oF Views ********/


/******** Creating , Altering and Dropping Views ********/
---CREATE
CREATE VIEW OrderView 
AS
SELECT *
FROM Orders

--- ALTER 
ALTER VIEW orderView 
AS 
SELECT orderID,OrderDate
FROM Orders

--- DROP VIEW

DROP VIEW orderView
/******** Simple and Complex Views ********/

-- simple view 
CREATE VIEW shippersView
AS
SELECT* FROM Shippers WHERE CompanyName='United Package'

--- complex view 
CREATE VIEW orders_View_Detail
AS
SELECT OrderID,OrderDate , ShipName, ShipCountry FROM Orders WHERE CustomerID IN 
(SELECT CustomerID FROM Customers WHERE Country IN 
(SELECT Country FROM Suppliers WHERE Country= 'japan' OR Country='uk' ))


/*3 - Indexes
     • Clustered Index
     • NonClustered Index
     • Create , Alter and Drop Indexes
     • Using Indexes*/

/********** clustered Index **********/
----------A clustered index is used to define the order or
---to sort the table or arrange the data by alphabetical order just like a dictionary. 

CREATE CLUSTERED INDEX idx_orderID_ShipCity ON Orders(OrderID, ShipCity)

/********** Non Clustered Index **********/
CREATE NONCLUSTERED INDEX idx_orderID_ShipCity ON Orders(OrderID, ShipCity)
CREATE NON CLUSTERED INDEX idx_regionID_RegionDescription ON Region(RegionID, RegionDescription)
/********** Create , Alter and Drop Indexes **********/
----CREATE 
CREATE INDEX idx_EmployeeID ON Employees(EmployeeID)
----ALTER
ALTER INDEX idx_EmployeeID ON Employees(EmployeeID)  REBUILD
----DROP
DROP INDEX idx_EmployeeID ON Employees(EmployeeID)

/********** Using Indexes **********/

execute sp_helpindex Employees
