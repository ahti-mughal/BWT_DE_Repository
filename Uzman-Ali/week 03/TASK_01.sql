-- Learning DDL Commands in SSMS

USE northwind;

-->1.SELECT COMMAND

SELECT *
FROM Employees

-->2.adding WHERE CLAUSE
WHERE ReportsTo > 0 
-->3.adding ORDER BY 
ORDER BY ReportsTo DESC

-->4.Using DISTINCT KEYWORD
-- It print out unique values in a column
SELECT DISTINCT(TitleOfCourtesy)
FROM Employees
-->5.Using ISNULL() FUNCTION
-- It is used to highlight EXPRESSION in coulnm which NULL and provide it with values
SELECT ISNULL(ReportsTo, 2) AS ISNULL_C, ReportsTo
FROM Employees

-->6.Using Column Aliases
-- All aliasing is changing your column name or table name is your scrip, temporarily.
-- It doesnot imapct your output at all.
-- We also use this method when we use Aggregiated functions
SELECT FirstName + ' ' + LastName FullName
FROM Employees

-->7. Using Predicates (Between, IN, LIKE, IS NULL)
SELECT *
FROM Employees
WHERE FirstName LIKE 'A%E%' AND ReportsTo IS NULL
-- IN is like a multiple equal statements
SELECT *
FROM Employees
WHERE LastName IN ('KING', 'Fuller')
-- BETWEEN Operator -use to locate mostly numeric values
SELECT *
FROM Employees
WHERE EmployeeID BETWEEN 3 AND 8 

-->8. Using TOP n Clause
SELECT TOP 5 *
FROM Employees

-->8. Using Set Operators(union, intersect, except)
-- UNION-combine all distinct values from multiple columns 
-- UNION ALL- Combine all column values from multiple tables
SELECT TOP 5
PostalCode, FirstName+ ' ' +LastName AS FullName, Title
FROM Employees
UNION
SELECT TOP 5
PostalCode, ContactName, ContactTitle
FROM Customers

-- INTERSECT- Combine two Select statements but returns only 
-- the dataset that is common in both the statements. 
-- To put it simply, it acts as a mathematical intersection.

SELECT City, Country
FROM Employees

INTERSECT

SELECT City, Country
FROM Customers


-- Except- The SQL EXCEPT statement returns those records from the 
-- left SELECT query, that are not present in the results returned 
-- by the SELECT query on the right side of the EXCEPT statement.

SELECT City, Country
FROM Employees

EXCEPT

SELECT City, Country
FROM Customers
--WHERE City IN ('TACOMA', 'REDMOND','LONDON')