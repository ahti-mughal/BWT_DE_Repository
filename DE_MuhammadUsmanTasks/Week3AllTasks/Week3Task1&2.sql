use Northwind

--Week 3 Task 1

/*1 - Data Query Language (DQL):
     • select
     • Where clause
     • Order By Clause
     • Distinct Keyword
     • Isnull() function
     • Column aliases
     • Predicates
     		- Between ... And
     		- In
     		- Like
     		- Is Null
     • Top n Clause
     • Set Operators
     		- Union
     		- Intersect
     		- Except*/


-- Select
select * from Employees
SELECT FirstName,Title,City FROM Employees;

--Where clause

SELECT * FROM Employees where City='London'

--Order By Clause

SELECT * FROM Employees order by EmployeeID desc

--Distinct Keyword

SELECT Distinct City FROM Employees;

--Isnull() function

SELECT ISNULL(Region, 'Jani') AS RegionNew FROM Employees;

-- Column aliases

SELECT BirthDate AS HappyBirthday, Country AS Mulak, City As Shehar
FROM Employees;

-- Between ... And

SELECT FirstName, City FROM Employees WHERE Extension BETWEEN 400 AND 500
select * from Employees
--In

SELECT City, Extension FROM Employees WHERE Extension IN (5467,3457,428)

--Like

SELECT FirstName,Title FROM Employees WHERE  Title Like 'Sales Representative';

--Is Null

SELECT LastName, City FROM Employees WHERE Region IS NULL;


SELECT TOP 5 FirstName,City FROM Employees ORDER BY EmployeeID DESC;

SELECT * FROM Customers
-- Union

SELECT FirstName As F_NAme FROM Employees UNION SELECT ContactName As C_Name FROM Customers;

--Intersect

SELECT EmployeeID FROM Employees INTERSECT SELECT EmployeeID FROM EmployeeTerritories;

--Except

SELECT FirstName As F_NAme FROM Employees EXCEPT SELECT ContactName As C_Name FROM Customers;


--Week 2 Task2

--1--Retrieve the product name, unit price, and units in stock of all products that cost less than $20, ordered by product name.

SELECT * from Products
SELECT ProductName,UnitPrice,UnitsInStock from Products where UnitPrice < 20 order by ProductName

--2--Retrieve the order ID, customer ID, and order date of all orders that do not have a customer ID, ordered by order date.

SELECT * from Orders
SELECT OrderID,CustomerID  from Orders WHERE CustomerID IS NULL order by OrderDate

--3-- Retrieve the category names of all products, as well as the countries to which orders have been shipped, without any duplicates.


SELECT * from Orders
SELECT * from Products
SELECT * from Categories
SELECT * FROM [Order Details]

SELECT DISTINCT CategoryName, ShipCountry FROM Products, Orders, [Order Details], Categories WHERE Products.ProductID = [Order Details].ProductID
AND [Order Details].OrderID = Orders.OrderID AND Products.CategoryID = Categories.CategoryID;

--We have retrieved required data by using the combinations of more than two tables and by 
--comparing their primary and foreign keys we have retrieved this data Distinct is used here as we do not need duplicates
