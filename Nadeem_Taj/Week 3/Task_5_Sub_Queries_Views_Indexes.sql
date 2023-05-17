/****** Script for SelectTopNRows command from SSMS  ******/
 use Northwind

/* 1 - Sub Queries:
       Single Row Sub Queries
       Multi Row Sub Queries
       Nested Sub Queries
       Co-Related Sub Queries*/

-- Single Row Sub Queries: These subqueries return only one row of data. They are used with comparison operators such as =, >, <, >=, <=, or <>

--Example 1
select FirstName, LastName, (select top 1 Title from Employees) as title
from Employees

--Example 2
Select EmployeeID,ShipName from Orders 
where freight<(select avg(Freight) From Orders)

-- Multi Row Sub Queries: These subqueries return multiple rows of data. They are used with the IN or NOT IN operator.

--Example 1
SELECT OrderID, CustomerID, ShipCountry FROM Orders
WHERE CustomerID IN (SELECT CustomerID FROM Customers WHERE Country = 'USA')

--Example 2
SELECT OrderID, CustomerID, ShipCountry FROM Orders
WHERE CustomerID not IN (SELECT CustomerID FROM Customers WHERE Country = 'USA')


-- Nested SubQueries: Subqueries that are inside another subquery are called nested subqueries. Subqueries are executed level by level

--Example 1

SELECT * 
FROM orders 
WHERE customerid IN 
   (SELECT customerid 
    FROM customers 
    WHERE country = 'USA');

--Example 2
SELECT ContactName, 
   (SELECT COUNT(*) 
    FROM orders 
    WHERE orders.customerid = customers.customerid) AS order_count 
FROM customers;

--Correlated Subqueries: Subqueries that return multiple columns as output depending on the information obtained from the parent query are called correlated subqueries. 

--Eample 1

SELECT *
FROM employees as e
WHERE BirthDate > (
   SELECT HireDate
   FROM employees
   WHERE EmployeeID = e.EmployeeID)

--Example 2
SELECT *
FROM Orders as o
where EmployeeID > (
     select avg(ShipVia) as avg_ship
	 from orders
	 where EmployeeID=o.EmployeeID
)


--Views in SQL
/*2 - Views:
     • Purpose Of Views
     • Creating , Altering and Dropping Views
     • Simple and Complex Views */

--The purpose of views in SQL is to provide a simplified and customizable way to access and manage data stored in one or more tables.

--Creating View
CREATE VIEW Customers_orders as
SELECT c.customerid, c.ContactName, o.orderdate
FROM customers as c
INNER JOIN orders as o ON c.customerid = o.customerid;

Select*from Customers_orders

--alter the view 
ALter View Customers_orders as 
SELECT c.customerid, c.ContactName, o.orderdate, o.ShipCity
FROM customers as c
INNER JOIN orders as o ON c.customerid = o.customerid;

Select*from Customers_orders -- Shipcity has been alter into your views

--Drop the View 
Drop View Customers_orders

--Simple and Complex Views: Simple views are based on a single table, while complex views are based on multiple tables by using joins or sub-queries. 


/* 3 - Indexes
     • Clustered Index
     • NonClustered Index
     • Create , Alter and Drop Indexes
     • Using Indexes
*/
--Indexes: An index is a data structure that improves the speed of data retrieval operations on a table and allows the database engine to locate specific rows in a table quickly, based on the values in one or more columns
/*Clustered Index: A clustered index is a type of index that orders the data in a table based on the values in the indexed 
  column. A table can have only one clustered index.
  Non-Clustered Index: A non-clustered index is a type of index that creates a separate structure for the indexed column that includes
  a reference to the actual data in the table. A table can have multiple non-clustered indexes.
  Clustered Index is mostly used for the column based upon which you do the sorting or frequent searching. 
  Whereas, Non-Clustered index is more commonly used for the columns based upon which filtering or joining of tables is done. 
 
 Using Indexes: Indexes can be used to speed up query performance by allowing the database to quickly locate data based on the indexed
 column without having to scan the entire table (jaisay Hash map works, kind of). 
*/
--Cluster index

--Created a index named idx_emp_id
Create index idx_emp_id on employees (Employeeid)

--Alter index 

Alter index idx_emp_id on ContactName

--Delete the idx_emp_id
Drop index idx_emp_id on employees 





select*from Orders
