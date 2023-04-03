Use Northwind
--Task5 
/*1 - Sub Queries:
     • Single Row Sub Queries
     • Multi Row Sub Queries
     • Nested Sub Queries
     • Co-Related Sub Queries*/

/*Single Row Sub Queries  [A single-row subquery is a type of SQL subquery that returns only one row of data]
Single Row Subqueries: This type of subquery returns a single value, 
usually used in a comparison operator to compare against a value in the outer query.*/
SELECT * FROM Orders
SELECT * FROM [Order Details]

SELECT OrderID, (SELECT MAX(UnitPrice) FROM [Order Details] WHERE OrderID = OrderID) AS MaxUnitPrice FROM Orders;
SELECT ProductName, UnitsInStock,UnitPrice FROM Products 
WHERE UnitPrice > (SELECT min(UnitPrice) FROM Products);

/*Multi Row Sub Queries [A Multi-row subquery is a type of SQL subquery that returns multiple rows of data]
This type of subquery returns multiple rows of data, 
usually used in a comparison operator to compare against a set of values in the outer query. */
SELECT OrderID, CustomerID FROM Orders
WHERE CustomerID IN (SELECT CustomerID FROM Customers WHERE Country = 'UK')

SELECT * FROM Employees
SELECT * FROM Orders


SELECT e.EmployeeID,e.FirstName,e.Title FROM Employees e Where e.EmployeeID IN(SELECT e.EmployeeID FROM Employees e WHERE e.Extension<500);

/*Nested Queries   Queries in Sub-Queries
This type of subquery is a subquery that is nested inside another subquery. 
It can be used to retrieve data from multiple tables and use that data in another query.*/

SELECT * FROM Orders WHERE CustomerID IN (SELECT CustomerID FROM Customers WHERE Country IN (SELECT Country FROM Suppliers  
         WHERE SupplierID IN (SELECT SupplierID FROM Products  WHERE Discontinued = 0)));
		

SELECT * FROM Employees WHERE EmployeeID IN (select EmployeeID FROM Orders where OrderID IN(select OrderID FROM [Order Details] 
                          WHERE UnitPrice>10));

/*Co-Related Sub Queries
This type of subquery is a subquery that references a column from the outer query.
It can be used to retrieve data from multiple tables and use that data in another query. */
SELECT o.CustomerID, o.OrderDate, o.ShipCity FROM orders o
WHERE o.Freight > (  SELECT AVG(o.Freight) FROM Orders o)



/*2 - Views:
     • Purpose Of Views
     • Creating , Altering and Dropping Views
     • Simple and Complex Views*/


	 --Purpose Of Views
	 /*The purpose of views is to provide a customized and simplified view of the data for the end-users, 
	 without them needing to know the underlying structure of the data.These are also known as virtual tables.*/

--Creating View


CREATE VIEW ProductsView 
AS SELECT ProductID, ProductName, UnitPrice FROM Products;

SELECT * FROM ProductsView

 -- Alter View
ALTER VIEW ProductsView As SELECT ProductName FROM Products;

SELECT * FROM ProductsView

-- Drop View
Drop View ProductsView


--Simple View
CREATE VIEW EmployeView
As SELECT  e.EmployeeID,e.FirstName from Employees e where e.Country='UK'
SELECT * from EmployeView



-- Complex View

CREATE VIEW OrderViews
As SELECT * FROM Orders WHERE CustomerID IN 
(SELECT CustomerID FROM Customers WHERE Country IN 
(SELECT Country FROM Suppliers WHERE SupplierID IN 
(SELECT SupplierID FROM Products  WHERE Discontinued = 0)))

SELECT * FROM OrderView


/*3 - Indexes
     • Clustered Index
     • NonClustered Index
     • Create , Alter and Drop Indexes
     • Using Indexes*/



CREATE TABLE Carr(
CarName varchar(50), PltNO int Primary key not null,  -- i-Identity using Unique attribute in my table
color varchar(50))

Insert into Carr(CarName,PltNO,color) values('merce',7655, 'black'),('Honda', 3453,'White'),('Audi',3456,'Grey')

select * from Carr

CREATE INDEX IndexCar
ON Carr (pltNO);


-- To create clusteer index we have to delete primary key of our table because clustered are usually made on primary keys by default

execute sp_helpindex Carr

CREATE clustered INDEX IndexCar ON Carr (pltNO);

alter  INDEX IndexCar ON Carr REBUILD

drop clustered index IndexCar 

CREATE nonclustered INDEX IndexCar ON Carr (pltNO);


alter  INDEX IndexCar ON Carr REBUILD