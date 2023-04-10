-- Practicing Sub Queries here

-- Sub Queries are often called inner queries or nested queries
-- It's basically a query with in a query. It is used to return
-- data that is in used by outer queries to generate outup we want.
-- We can use Sub Query in any statement such as (SELECT, WHERE, etc.)
USE northwind;
SELECT *
FROM Orders

-->1. Sub Query in SELECT
SELECT EmployeeID, City, (SELECT COUNT(EmployeeID) FROM Employees) AS Total_E
FROM Employees

-->2. How do you do in Partition By
SELECT EmployeeID, City, COUNT(EmployeeID) over() AS Total_E
FROM Employees

-->3. Why Group By doesnot work and therefore we need Sub Queries
--    It give a total different output
SELECT EmployeeID, City, COUNT(EmployeeID) AS Total_E
FROM Employees
GROUP BY EmployeeID, City
ORDER BY 1,2

-->4. Sub Query in FORM / It's not a preferable way you should use temp table or CTE 
--    instead As it is more efficient way. Using Partition By query
SELECT a.EmployeeID, a.Total_E
FROM (SELECT EmployeeID, City, COUNT(EmployeeID) over() AS Total_E
      FROM Employees) AS a

-->5. Sub Query in WHERE
SELECT EmployeeID, FirstName, Country 
FROM Employees
WHERE EmployeeID IN (
      SELECT EmployeeID
	  FROM Orders
	  WHERE ShipRegion IS NULL)

-- Sub Queries Examples
-->• Single Row Sub Queries
-- A single-row subquery returns only one row of results to the outer query. 
-- These subqueries are used when you need to retrieve a single value from a table
SELECT EmployeeID, ShipVia 
FROM Orders
WHERE ShipVia < (SELECT AVG(ShipVia) FROM Orders)
ORDER BY EmployeeID

-->• Multi Row Sub Queries
-- A multi-row subquery returns more than one row of results to the outer query. 
-- These subqueries are used when you need to retrieve multiple values from a table. 
SELECT EmployeeID, ShipVia 
FROM Orders
WHERE EmployeeID IN (SELECT EmployeeID FROM Employees WHERE Country = 'USA')
-->• Nested Sub Queries
-- A nested subquery is a subquery within another subquery. These subqueries are 
-- used when you need to perform a complex query that requires multiple levels of
-- filtering.

SELECT EmployeeID, ShipVia
FROM Orders
WHERE EmployeeID IN (SELECT EmployeeID FROM Employees WHERE EmployeeID IN 
(SELECT EmployeeID FROM Territories WHERE TerritoryDescription ='BOSTON'))

-->• Co-Related Sub Queries
-- A correlated subquery is a subquery that references one or more columns from 
-- the outer query. These subqueries are used when you need to filter data based 
-- on a condition from another table.

SELECT EmployeeID, City
FROM Employees
WHERE EmployeeID IN (SELECT EmployeeID FROM Employees WHERE Country ='UK')

----------------------------FROM HERE VIEW START--------------------------------------


--> Understanding View in full with explantion using Northwind Database 
USE northwind;
--1. What View is?
---  View is a Database object. Which is created over an SQL Query.
---  In short it's a virtual table (but table can store data) that represent data 
---  written in SQL query.
---  Also note that View doesnot store any data. We will discuss more in examples.

--2. What is its purpose?
--- i-SECURITY:The main purpose why we use View is Security, Suppose your client demand SQL queries 
---  He wants to run queries everytime he want to find out informations.
---  Here is the issue:
---  You cann't hand over the SQL file having queries to him as whole. Because
---  It contain data that may be confidentails such as Customer or products details...
---  In that case, we create View for our customer. More in examples.
--- ii-To Simplfiy Complex SQL queries:
---  To our client instead of sharing complex long query. It much better to make view
---  of those complex query and share it with him.

CREATE VIEW Customer_Owner 
AS
SELECT * FROM Customers
WHERE ContactTitle ='Owner'
-- Calling View
SELECT * FROM Customer_Owner

--3. Creating , Altering and Dropping in VIew

--- i- Create & Replace in View
---  View does not store data but it stores the stucture of your query.
---  It means you can alter column names, their data types and their order.
---  But you can add new columnsat the very end, changing order of existing column.
---  Now to change name of colum in View or name of view. We use 'alter' command in
---  View. More using examples.

CREATE OR ALTER VIEW Customer_Owner 
AS
SELECT * FROM Customers
WHERE ContactTitle ='Owner'

--- ii- Dropping in VIew
---  It can be easily done using 'drop' command. More in example.

DROP VIEW Customer_Owner 

--4. What is Complex Views?
---  A complex view is a database object in SQL that is based on one or more tables 
---  and often includes aggregation functions, subqueries, and joins. 
---  By using complex views, you can simplify the process of querying data by 
---  encapsulating the complexity of the underlying tables and queries into a single object.
CREATE VIEW Ship_record
AS
SELECT a.CustomerID, ShipVia
FROM Customers AS a
JOIN Orders
   ON a.CustomerID = Orders.CustomerID
WHERE ShipVia <> 0


SELECT * FROM Ship_record


----------------------------FROM HERE INDEXES START--------------------------------------

---> INDEXES
-- Indexes are an important feature/objectin DB that improves our query efficiency.
-- Indexes help locate DB certain rows that fulfill the conditions. This save much time.
-- It's fast and efFicient way to search any data in DB. 
-- We can create indexes in one or more column in a table depending on our need.

--> Below will discuss 2 well known types of Indexes

--1. Non-Clustered Index
-- This also known as B-Tree index. Let's look at the example below.
Use northwind;
CREATE NONCLUSTERED INDEX ind_employers_id
ON Employees(EmployeeID)

-- In above we have create non-cluster index on 'Employees' table, column 'E_ID'.
-- The index name is 'ind_employers_id'.

--2. Clustered Index
-- This is type of index that defines how data is store for Table.
-- Cluster index specifies that the data in the table stored in the same order as data
-- in the index. It's means it's faster to retrieve data when a cluster index is used.
-- Drawback is you can use only one cluster index in a table. Let understand using example.

CREATE INDEX ind_customer_id
ON Orders(CustomerID)

---> Altering and Droping Indexes
-- Altering of Indexex is done using 'alter' command in SQL
ALTER INDEX ind_employers_id
ON Employees
REBUILD

-- Droping is done using 'Drop' command
DROP INDEX ind_employers_id
ON Employees

---> Using/Calling Indexes in Northwind DB
SELECT *
FROM Orders
WHERE EmployeeID > 4

-- There is index on EmployeeID so the efficiency of this query increase.