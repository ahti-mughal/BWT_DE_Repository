--TASK 1
--SELECT STATEMENT

--Write a statment to get all the columns from the Customers table.
SELECT * FROM Orders;

--Write a statement that will select the City column from the Customers table.
SELECT City FROM Customers;

--DISTINCT STATEMENT
--Select all the different values from the Country column in the Customers table.
SELECT DISTINCT Country
FROM Customers;

--WHERE STATEMENT

--Select all records where the City column has the value "Berlin".
SELECT * 
FROM Customers
WHERE City = 'Berlin'

--ORDER BY STATEMENT
--Select all records from the Customers table, sort the result alphabetically by the column City.
SELECT * 
FROM Customers
ORDER BY City;

--Select all records from the Customers table, sort the result reversed alphabetically by the column City.
SELECT * 
FROM Customers
ORDER BY City DESC;

--ISNULL() FUNCTION
-- ISNULL() function lets you return an alternative value when an expression is NULL:

--ALIASES (AS) STATEMENT
--When displaying the Customers table, make an ALIAS of the PostalCode column, the column should be called Pno instead.
SELECT ContactName,
Address,
PostalCode AS Pno
FROM Customers;

--BETWEEN OPERATOR
--Select all the records where the CustomerID is between 10 and 20.
SELECT *
FROM Orders
WHERE EmployeeID BETWEEN 1 AND 20;

--IN OPERATOR
--selects all customers that are located in "Germany", "France" or "UK".
SELECT * FROM Customers
WHERE Country IN ('Germany', 'France', 'UK');

--LIKE OPERATOR
--Select all records where the value of the City column starts with the letter "a".
SELECT * 
FROM Customers
WHERE City LIKE 'a%';

--Select all records where the value of the City column contains the letter "a".
SELECT * 
FROM Customers
WHERE City LIKE '%a%';

--NULL STATEMENT
--Select all records from the Customers where the PostalCode column is empty.
SELECT * 
FROM Customers
WHERE PostalCode IS NULL;

-- Lists all customers with a value in the "Address" field.
SELECT *
FROM Customers
WHERE Address IS NOT NULL;

--TOP n CLAUSE
--Select the first 5 records from the "Customers" table
SELECT TOP 5 * FROM Customers;

--UNION OPERATOR
--Returns the cities from both the "Customers" and the "Suppliers" table:
SELECT City FROM Customers
UNION
SELECT City FROM Suppliers;


--INTERSECT OPERATOR
--Returns common cities from both the "Customers" and the "Suppliers" table:
SELECT City FROM Customers
INTERSECT
SELECT City FROM Suppliers;

--EXCEPT STATEMENT
--Returns cities from the "Customers" table and not in the "Suppliers" table:
SELECT City FROM Customers
EXCEPT
SELECT City FROM Suppliers;


