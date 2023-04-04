SELECT * FROM Customers;
SELECT * FROM Customers WHERE Country = 'USA';
SELECT * FROM Customers ORDER BY ContactName ASC;
SELECT DISTINCT City FROM Customers;
SELECT CustomerID, ContactName, ISNULL(Phone, 'N/A') as Phone FROM Customers;
SELECT CustomerID as ID, ContactName as Name FROM Customers;
SELECT * FROM Orders WHERE OrderDate BETWEEN '1996-07-01' AND '1996-07-31';
SELECT * FROM Customers WHERE Country IN ('USA', 'Canada');
SELECT * FROM Customers WHERE ContactName LIKE 'Maria%';
SELECT * FROM Customers WHERE Fax IS NULL;
SELECT TOP 5 * FROM Customers;
SELECT City FROM Customers
UNION
SELECT City FROM Employees;
