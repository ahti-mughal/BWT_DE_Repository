
                                --Week 03 Task 05--
								  -- Sub Queries:
							
use northwind;

                                --Single Row Sub Queries--
SELECT * FROM Orders
SELECT * FROM [Order Details]

SELECT OrderID, (SELECT MAX(UnitPrice) FROM [Order Details] WHERE OrderID = OrderID) AS MaxUnitPrice FROM Orders;
SELECT ProductName, UnitsInStock,UnitPrice FROM Products 
WHERE UnitPrice > (SELECT min(UnitPrice) FROM Products);

                                --Multi Row Sub Queries--
SELECT OrderID, CustomerID FROM Orders
WHERE CustomerID IN (SELECT CustomerID FROM Customers WHERE Country = 'UK')

SELECT * FROM Employees
SELECT * FROM Orders

SELECT e.EmployeeID,e.FirstName,e.Title FROM Employees e Where e.EmployeeID IN(SELECT e.EmployeeID FROM Employees e WHERE e.Extension<500);

                                --Nested Sub-Queries--

SELECT * FROM Orders WHERE CustomerID IN (SELECT CustomerID FROM Customers WHERE Country IN (SELECT Country FROM Suppliers  
         WHERE SupplierID IN (SELECT SupplierID FROM Products  WHERE Discontinued = 0)));
		
SELECT * FROM Employees WHERE EmployeeID IN (select EmployeeID FROM Orders where OrderID IN(select OrderID FROM [Order Details] 
                          WHERE UnitPrice>10));

                               --Co-Related Sub Queries--

SELECT o.CustomerID, o.OrderDate, o.ShipCity FROM orders o
WHERE o.Freight > (  SELECT AVG(o.Freight) FROM Orders o)



								-- Views:
							/*     • Purpose Of Views
									• Creating , Altering and Dropping Views
									• Simple and Complex Views*/

				--Purpose Of Views
				/*The purpose of views is to provide a customized and simplified view of the data for the end-users, 
				without them needing to know the underlying structure of the data.These are also known as virtual tables.*/

                               --Creating View--

CREATE VIEW ProductsView 
AS SELECT ProductID, ProductName, UnitPrice FROM Products;

SELECT * FROM ProductsView

                               --Alter View--
ALTER VIEW ProductsView As SELECT ProductName FROM Products;

SELECT * FROM ProductsView

                               --Drop View--
Drop View ProductsView

                               --Simple View--
CREATE VIEW EmployeView
As SELECT  e.EmployeeID,e.FirstName from Employees e where e.Country='UK'
SELECT * from EmployeView

                               --Complex View--

CREATE VIEW OrderViews
As SELECT * FROM Orders WHERE CustomerID IN 
(SELECT CustomerID FROM Customers WHERE Country IN 
(SELECT Country FROM Suppliers WHERE SupplierID IN 
(SELECT SupplierID FROM Products  WHERE Discontinued = 0)))

SELECT * FROM OrderViews;

					     -- Indexes
					/*	 • Clustered Index
						 • NonClustered Index
						 • Create , Alter and Drop Indexes
						 • Using Indexes        */

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