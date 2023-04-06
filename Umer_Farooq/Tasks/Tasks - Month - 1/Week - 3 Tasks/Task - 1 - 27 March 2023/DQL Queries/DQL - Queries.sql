-- Order By:
-- It is used to sort the result-set in ascending or descending order.
-- It sort the result-set in ASC order by default. To sort in DESC order, just USE DESC

SELECT FirstName + ' ' + LastName AS FullName, Title, HireDate, Country, Notes
FROM northwind.dbo.Employees
ORDER BY FullName, HireDate DESC;

-- What are the bottom 5 products by unit price?
SELECT TOP 5 ProductName, UnitPrice
FROM Products
ORDER BY UnitPrice DESC;

-- Distinct:
-- A keyword used to retrieve unique records in a SQL statement. 
-- The DISTINCT keyword removes duplicate records from the result set.

-- What are the unique cities where customers are located?
SELECT DISTINCT(City)
FROM Customers;

-- What are the unique job titles held by employees?
SELECT DISTINCT(Title)
FROM Employees;


-- Column Aliases:
--A way to assign a temporary name to a column in the result set of a SQL statement. 
--Column aliases are useful for renaming columns to make the output more readable 
--or for referencing the column in subsequent SQL statements.

-- What are the names of all the products, and their prices, sorted by price in descending order?
SELECT 
	ProductName AS All_Products, -- AS is used to Declare Column Aliases
	UnitPrice Price -- It can also be declare by Simply Giving a Space As i did.
FROM Products
ORDER BY Price DESC;

-- Which employees have the longest last names, and what are their last names?
SELECT LastName, MAX(LEN(LastName)) AS Length
FROM Employees
GROUP BY LastName
ORDER BY Length DESC;

-- ISNULL:
-- IS NULL to look for NULL values.
--  A function used to check whether a specified expression is null or not.
-- A field with a NULL value is one that has been left blank during record creation!
-- IS NOT NULL is opposite to IS NULL.

-- What are the names of all the customers that do not have a fax number listed?
SELECT ContactName AS CustomerName
FROM Customers
WHERE FAX IS NULL;

-- Which employees do not have a photo associated with their employee record?
SELECT CONCAT(FirstName, LastName) AS EmployeeName
FROM Employees
WHERE Photo IS NULL;


