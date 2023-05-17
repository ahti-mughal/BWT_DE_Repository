USE northwind

/* The SQL SELECT Statement

The SELECT statement is used to select data from a database.

The data returned is stored in a result table, called the result-set. */

--The following SQL statement selects the "CustomerName" and "City" columns from the "Customers" table:


SELECT CustomerID, City FROM Customers

--The following SQL statement selects all the columns from the "Customers" table:

SELECT * FROM Customers

/* The SQL SELECT DISTINCT Statement
The SELECT DISTINCT statement is used to return only distinct (different) values.

Inside a table, a column often contains many duplicate values; and sometimes you only want to list the different (distinct) values.*/

SELECT DISTINCT Country FROM Customers


/* The SQL WHERE Clause
The WHERE clause is used to filter records.

It is used to extract only those records that fulfill a specified condition. */

SELECT * FROM Customers
WHERE Country ='Mexico'

/* Operators in The WHERE Clause
The following operators can be used in the WHERE clause:

Operator	 Description	
=	         Equal	
>	         Greater than	
<	         Less than	
>=	         Greater than or equal	
<=	         Less than or equal	
<>	         Not equal. Note: In some versions of SQL this operator may be written as !=	
BETWEEN	     Between a certain range	
LIKE	     Search for a pattern

*/

/* The SQL ORDER BY Keyword
The ORDER BY keyword is used to sort the result-set in ascending or descending order.

The ORDER BY keyword sorts the records in ascending order by default. To sort the records in descending order, use the DESC keyword.
*/

SELECT * FROM Customers
ORDER BY Country

--ORDER BY DESC Example
SELECT * FROM Customers
ORDER BY Country DESC

/* ISNULL FUNCTION
This function takes only two arguments i.e expression and value

The ISNULL() function returns a specified value if the expression is NULL.

If the expression is NOT NULL, this function returns the expression.
SYNTEX
ISNULL(expression, value)
*/

SELECT ISNULL('QASIM','KHAN')

SELECT ISNULL(NULL,'KHAN')

/* SQL Aliases
SQL aliases are used to give a table, or a column in a table, a temporary name.

Aliases are often used to make column names more readable.

An alias only exists for the duration of that query.

An alias is created with the AS keyword.

Alias Column Syntax

SELECT column_name AS alias_name
FROM table_name;

*/

SELECT CustomerID AS ID
FROM Customers

--The following SQL statement creates two aliases, one for the CustomerName column and one for the ContactName column. Note:
--It requires double quotation marks or square brackets if the alias name contains spaces:

SELECT CompanyName AS Customer, ContactName AS [Contact Person]
FROM Customers


--The following SQL statement creates an alias named "Address" that combine four columns (Address, PostalCode, City and Country):

SELECT CustomerID, Address + ', ' + PostalCode + ',' + City + ', ' + Country AS Address
FROM Customers


--PREDICATES

/*  SQL BETWEEN Operator

The BETWEEN operator selects values within a given range. The values can be numbers, text, or dates.

The BETWEEN operator is inclusive: begin and end values are included. 
*/

SELECT * FROM Products
WHERE UnitPrice BETWEEN 10 AND 20


--NOT BETWEEN Example
SELECT * FROM Products
WHERE UnitPrice NOT BETWEEN 10 AND 20

--BETWEEN Text Values Example

SELECT * FROM Products
WHERE ProductName BETWEEN 'Carnarvon Tigers' AND 'Mozzarella di Giovanni'
ORDER BY ProductName


/*The SQL IN Operator
The IN operator allows you to specify multiple values in a WHERE clause.

The IN operator is a shorthand for multiple OR conditions.
*/

--The following SQL statement selects all customers that are located in "Germany", "France" or "UK":

SELECT * FROM Customers
WHERE Country IN ('Germany', 'France', 'UK')

--The following SQL statement selects all customers that are NOT located in "Germany", "France" or "UK":

SELECT * FROM Customers
WHERE Country NOT IN ('Germany', 'France', 'UK')


/* The SQL LIKE Operator
The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.

There are two wildcards often used in conjunction with the LIKE operator:

 The percent sign (%) represents zero, one, or multiple characters
 The underscore sign (_) represents one, single character */

--The following SQL statement selects all customers with a CompanyName  starting with "a":

SELECT * FROM Customers
WHERE CompanyName  LIKE 'a%';


--The following SQL statement selects all customers with a CompanyName  ending with "a":

SELECT * FROM Customers
WHERE CompanyName  LIKE '%a';


--The following SQL statement selects all customers with a CompanyName  that have "or" in any position:

SELECT * FROM Customers
WHERE CompanyName  LIKE '%or%';


--The following SQL statement selects all customers with a CompanyName  that have "r" in the second position:

SELECT * FROM Customers
WHERE CompanyName  LIKE '_r%';

--The following SQL statement selects all customers with a CompanyName  that starts with "a" and are at least 3 characters in length:

SELECT * FROM Customers
WHERE CompanyName  LIKE 'a__%';


--The following SQL statement selects all customers with a ContactName that starts with "a" and ends with "o":

SELECT * FROM Customers
WHERE ContactName LIKE 'a%o';

--The following SQL statement selects all customers with a CompanyName  that does NOT start with "a":

SELECT * FROM Customers
WHERE CompanyName NOT LIKE 'a%';

-- SET OPERATORS

/* The SQL UNION Operator
The UNION operator is used to combine the result-set of two or more SELECT statements.

Every SELECT statement within UNION must have the same number of columns
The columns must also have similar data types
The columns in every SELECT statement must also be in the same order */


--The following SQL statement returns the cities (only distinct values) from both the "Customers" and the "Suppliers" table:

SELECT City FROM Customers
UNION
SELECT City FROM Suppliers
ORDER BY City;


--SQL UNION ALL Example
--The following SQL statement returns the cities (duplicate values also) from both the "Customers" and the "Suppliers" table:

SELECT City FROM Customers
UNION ALL
SELECT City FROM Suppliers
ORDER BY City;


