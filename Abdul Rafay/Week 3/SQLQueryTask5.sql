use Northwind;
select* from Employees;

---single row sub querry

SELECT FirstName, LastName,Title
FROM Employees
WHERE PostalCode = 
(SELECT PostalCode 
FROM Employees
WHERE  FirstName= 'Nancy');

--MultiRow Subquerry

SELECT OrderId,OrderDate,ShippedDate
FROM Orders
WHERE EmployeeID
IN(SELECT EmployeeID 
FROM Employees
WHERE Region='WA' );

--nested subquerry
SELECT OrderId,OrderDate,ShippedDate
FROM Orders
WHERE EmployeeID
IN(SELECT EmployeeID 
FROM Employees 
WHERE Region IN (SELECT Region from Employees
where Country='USA') );

--create a view
Select * from [Alphabetical list of products];

--drop view

Drop View [Orders Qry];

               ------purpose of views
--Views in SQL are considered as a virtual table. A view also contains rows and columns.
--To create the view, we can select the fields from one or more tables present in the database.
--A view can either have specific rows based on certain condition or all the rows of a table

               ------simple vs complex view
--	Simple View	
-- Contains only one single base table or is created from only one table. 	
--	We cannot use group functions like MAX(), COUNT(), etc. 	
--	Does not contain groups of data. 	
--	DML operations could be performed through a simple view. 	
--	INSERT, DELETE and UPDATE are directly possible on a simple view. 	

--complex view
--Contains more than one base table or is created from more than one table.
--We can use group functions
--It can contain groups of data.
--DML operations could not always be performed through a complex view.
--We cannot apply INSERT, DELETE and UPDATE on complex view directly
