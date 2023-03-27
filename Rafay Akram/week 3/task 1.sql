/* SELECT * 
FROM Customers;
SELECT *
FROM Orders
WHERE CustomerID = 'ALFKI';
SELECT *
FROM Customers
ORDER BY City ASC;
SELECT DISTINCT Country
FROM Customers;
SELECT ContactName, ISNULL(Phone, 'N/A') AS Phone
FROM Customers;
SELECT ContactName AS Name, City AS Location
FROM Customers;
SELECT *
FROM Orders
WHERE OrderDate BETWEEN '1996-07-04' AND '1996-07-31';
SELECT *
FROM Customers
WHERE Country IN ('USA', 'Canada');
SELECT *
FROM Customers
WHERE ContactName LIKE 'A%';
SELECT *
FROM Customers
WHERE Fax IS NULL;
SELECT TOP 5 *
FROM Customers
ORDER BY ContactName ASC; */

SELECT City
FROM Customers
WHERE Country = 'USA'
UNION
SELECT City
FROM Customers
WHERE Country = 'Canada';

SELECT City
FROM Customers
WHERE Country = 'USA'
INTERSECT
SELECT City
FROM Customers
WHERE ContactTitle = 'Owner';

SELECT City
FROM Customers
WHERE Country = 'USA'
EXCEPT
SELECT City
FROM Customers
WHERE ContactTitle = 'Owner';
