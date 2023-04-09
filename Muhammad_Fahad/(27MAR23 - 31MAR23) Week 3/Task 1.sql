-- SELECT [Used to select data from a database]
SELECT CustomerID, CompanyName, ContactTitle, City, Phone
FROM Customers;

-- WHERE [Used to filter records]
SELECT ProductName, QuantityPerUnit, UnitPrice, UnitsInStock
FROM Products
WHERE UnitPrice >= 10;

-- ORDER BY [Used to sort the result-set in ascending or descending order]
SELECT ProductName, QuantityPerUnit, UnitPrice, UnitsInStock
FROM Products
WHERE UnitPrice >= 10
ORDER BY UnitPrice DESC; 

-- DISTINCT [Used to return only distinct (different) values]
SELECT DISTINCT CITY
FROM Suppliers;

-- ISNULL() [returns a specified value if the expression is NULL]
SELECT ISNULL(Country, 'Unknown') AS Country, ISNULL(COUNT(Country), 0) AS Country_Count_Col
FROM Suppliers
GROUP BY Country
ORDER BY Country_Count_Col DESC;

-- COLUMN ALIAS [give a table, or a column in a table, a temporary name]
SELECT Country, COUNT(Country) AS Country_Count_Col
FROM Suppliers
GROUP BY Country
ORDER BY Country_Count_Col DESC;

-- (Predicates) 
--BETWEEN and AND [selects values within a given range]
SELECT ProductName, QuantityPerUnit, UnitPrice, UnitsInStock
FROM Products
WHERE UnitPrice BETWEEN 15 AND 35
ORDER BY UnitPrice ASC; 
-- IN 
SELECT CompanyName, ContactName, City, Country
FROM Suppliers
WHERE Country IN ('Germany', 'UK') 
-- LIKE
SELECT TitleOfCourtesy,FirstName, LastName, Title, Country
FROM Employees
WHERE TitleOfCourtesy LIKE 'Dr.%'
-- IS NULL
SELECT UnitsInStock, COUNT(UnitsInStock) as NULL_Count
FROM Products
WHERE UnitsInStock IS NULL
GROUP BY UnitsInStock; 

-- TOP CLAUSE [Used to specify the number of records to return.]
SELECT TOP 10 ProductName, QuantityPerUnit, UnitPrice, UnitsInStock
FROM Products
WHERE UnitPrice >= 25
ORDER BY UnitPrice DESC; 

-- UNION [Used to combine the result-set of two or more SELECT statements]
SELECT City, Country FROM Customers
UNION
SELECT City, Country FROM Employees
ORDER BY COUNTRY ASC;

-- INTERSECT [will return only those rows which will be common to both of the SELECT statements]
SELECT City, Country FROM Customers
INTERSECT
SELECT City, Country FROM Employees
ORDER BY COUNTRY ASC; 

-- EXCEPT [used to filter records based on the intersection of records returned via two SELECT statements]
SELECT City, Country FROM Customers
EXCEPT
SELECT City, Country FROM Employees
ORDER BY COUNTRY ASC;


