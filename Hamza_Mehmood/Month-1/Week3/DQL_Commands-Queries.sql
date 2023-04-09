-- DQL Commands
/*Select:
The SELECT statement is used to retrieve data from one or more tables in a database. It allows you to specify which columns to retrieve.
Example:*/
use  Northwind;
SELECT FirstName, LastName
FROM Employees;

/*Where clause:
The WHERE clause is used to filter the results of a SELECT statement based on one or more conditions. You can use comparison operators like = or <>, logical operators like AND or OR, and functions like IS NULL to create your conditions.
Example:*/

SELECT * FROM Employees WHERE ReportsTo > 2;

/*ORDER BY Clause:
The ORDER BY clause is used to sort the result set in ascending or descending order based on one or more columns.*/
/*Example:
Suppose we want to retrieve all students from the "Employees" table and sort them in descending order based on their ReportsTo. We can use the following query:*/
SELECT * FROM Employees ORDER BY ReportsTo DESC;

/*DISTINCT Keyword:
The DISTINCT keyword is used to retrieve unique values from a column in a table.
Example:
Suppose we want to retrieve all unique names from the "Employees" table. We can use the following query:*/
SELECT DISTINCT FirstName FROM Employees;

/*ISNULL() Function:
The ISNULL() function is used to check whether a column contains null values or not. It returns 1 if the column contains null values, otherwise 0.
Example:
Suppose we want to check whether the "ReportsTo" column in the "Employees" table contains null values or not. We can use the following query:*/
SELECT ISNULL(ReportsTo,'') FROM Employees;

/*Column Aliases:
Column aliases are used to give a column a temporary name in a query result set. They are useful when we want to give a more descriptive or shorter name to a column.*/
SELECT CONCAT(FirstName ,' ', LastName) AS "Full Name", ReportsTo FROM Employees;

/*Between ... And:
The BETWEEN...AND predicate is used to select values within a range of two values. The syntax for using BETWEEN is as follows:*/
SELECT * 
FROM Employees
WHERE ReportsTo BETWEEN 1 AND 6;

/*In:
The IN predicate is used to compare a value to a list of values. The syntax for using IN is as follows:*/
SELECT * 
FROM Employees
WHERE FirstName IN ('John', 'Jane');

/*Like:
The LIKE predicate is used to select values that match a specified pattern. The syntax for using LIKE is as follows:*/
SELECT * 
FROM Employees
WHERE FirstName LIKE 'Joh%';

--Is Null:
--The IS NULL predicate is used to select rows where the specified column is null. The syntax for using IS NULL is as follows:
SELECT * 
FROM Employees
WHERE ReportsTo IS NULL;

--Data Query Language (DQL) is a language used to retrieve data from a database. One commonly used clause in DQL is the "TOP n" clause, which is used to limit the number of rows returned in a query to the top n rows.
SELECT TOP 5 FirstName, ReportsTo FROM employees
WHERE Title = 'sales'
ORDER BY Country DESC;

--UNION Operator:
--The UNION operator combines the results of two or more SELECT statements into a single result set. The columns in the SELECT statements must have the same data type and appear in the same order in all SELECT statements.
SELECT FirstName, LastName FROM Employees
UNION
SELECT CompanyName as CN,Null FROM Customers;

--INTERSECT Operator:
--The INTERSECT operator returns only the common rows returned by two SELECT statements.
SELECT FirstName FROM Employees
INTERSECT
SELECT CompanyName FROM Customers;

--EXCEPT Operator:
--The EXCEPT operator returns only the rows from the first SELECT statement that are not in the second SELECT statement.
SELECT FirstName FROM Employees
EXCEPT
SELECT CompanyName FROM Customers;



--QUERIES:
--Retrieve the product name, unit price, and units in stock of all products that cost less than $20, ordered by product name.
SELECT  ProductName, UnitPrice, UnitsInStock
FROM Products
WHERE UnitPrice < 20
ORDER BY ProductName;

--Retrieve the order ID, customer ID, and order date of all orders that do not have a customer ID, ordered by order date.
SELECT   OrderID, CustomerID, OrderDate
FROM Orders
WHERE CustomerID IS NULL
ORDER BY OrderDate ;


