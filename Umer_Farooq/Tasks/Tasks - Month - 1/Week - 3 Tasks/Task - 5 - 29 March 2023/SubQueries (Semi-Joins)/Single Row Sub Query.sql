--Subquery:

--In SQL, a subquery is a query that is embedded within another query. 
--It is used to retrieve data from one or more tables based on a condition that is defined in the subquery.

-- ==A subquery can be implemented in two ways:==

--1. As a subquery within a SELECT statement: 
--The subquery is enclosed in parentheses and is placed inside the SELECT statement's WHERE clause.

--2. As a subquery within a FROM clause: 
--The subquery is used as a table within the FROM clause of the outer query.

-- ==Subquery is also called Semi-Joins?==

--Yes, subqueries are also referred to as semi-joins because they can be used to perform a similar operation to a join.

--A semi-join is a type of join that only returns the rows from one table that have a matching row in another table based on a specified condition.
--In SQL, a subquery can be used to achieve a semi-join by filtering the rows of one table based on a condition that involves another table.

SELECT *
FROM Customers
WHERE CustomerID IN (
  SELECT CustomerID
  FROM Orders
);

-- This statement retrieves all the rows from the "Customers" table where the CustomerID appears in the "Orders" table.

-- == Single Row Subquery ==

--A single-row subquery is a type of subquery that returns only one row of data as its output. 
--It is used to retrieve a single value that can be compared to a single value of another table's column or used in other operations.

-- ==Examples==

-- suppose we have a table of products and we want to find the product with the highest price. We can use a single-row subquery as follows:
-- This is subquery within Select's WHERE clause:
SELECT ProductID, UnitPrice -- Here as we need only one value to select, so thats why we use subquery within a select clause
FROM Products
WHERE UnitPrice = (SELECT MAX(UnitPrice) FROM Products);

-- suppose we have a table of orders and we want to find the total no of orders for each customer. We can use a single-row subquery as follows:
SELECT CustomerID, SUM(OrderID) Total_Orders
FROM (SELECT CustomerID, OrderID FROM Orders) AS Order_Subquery
GROUP BY CustomerID;

-- ==Questions==

--What is the average unit price of all products in the "Beverages" category?
SELECT ProductName, AVG(UnitPrice) Avg_Price
FROM 
(SELECT ProductName, UnitPrice FROM Products 
WHERE CategoryID IN(SELECT CategoryID FROM Categories
WHERE CategoryName = 'Beverages')) AS sub_query
GROUP BY ProductName;

--Which products have a unit price higher than the average unit price of all products in the "Condiments" category?
-- We will use Subquery within SELECT clause:

SELECT ProductName, UnitPrice As Higher_Price
FROM Products
WHERE UnitPrice > (SELECT AVG(UnitPrice) FROM Products 
				   WHERE CategoryID IN(SELECT CategoryID FROM Categories WHERE CategoryName = 'Condiments'));


--What is the total number of orders placed by customers who have not placed any orders in the month of January 1997?

SELECT CustomerID, SUM(OrderID) Num_of_Records
FROM Orders
WHERE NOT (MONTH(OrderDate) = 01 AND YEAR(OrderDate) = 1997)
GROUP BY CustomerID;