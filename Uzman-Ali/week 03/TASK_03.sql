--> Practice JOINS in detail

--1. INNER JOIN-(A ^ B)  Inner Join shows everything that is common between two tables
--               based on the 'CompanyName' column at both table.
USE northwind;

SELECT ContactID, CustomerID, Contacts.CompanyName AS CON, Customers.CompanyName AS CUS, Contacts.City
FROM Contacts
INNER JOIN Customers
    ON Contacts.CompanyName = Customers.CompanyName

--2. FULL OUTER JOIN-(A U B) It shows all values from both tables regardless you have match or not.

SELECT ContactID, CustomerID, Contacts.CompanyName AS CON, Customers.CompanyName AS CUS, Contacts.City
FROM Contacts
FULL OUTER JOIN Customers
    ON Contacts.CompanyName = Customers.CompanyName

--3. LEFT OUTER JOIN-(Table A) It's takes everything from the left table and everything
--   that is overlaping, but if it's from right table we do not want it.
SELECT ContactID, CustomerID, Contacts.CompanyName AS CON, Customers.CompanyName AS CUS, Contacts.City
FROM Contacts
LEFT OUTER JOIN Customers
    ON Contacts.CompanyName = Customers.CompanyName

--4. RIGHT OUTER JOIN-(Table B) It's takes everything from the Right table and everything
--   that is overlaping, but if it's from left table we do not want it.
SELECT ContactID, CustomerID, Contacts.CompanyName AS CON, Customers.CompanyName AS CUS, Contacts.City
FROM Contacts
RIGHT OUTER JOIN Customers
    ON Contacts.CompanyName = Customers.CompanyName

--5. SELF JOIN- The SQL SELF JOIN is used to join a table to itself as if the table were two
--              tables; temporarily renaming at least one table in the SQL statement.
SELECT a.ContactName AS C1, b.ContactName AS C2, a.City
FROM Customers a, Customers b
WHERE a.City = b.City AND a.CustomerID <> b.CustomerID
--E.G 2
SELECT a.FirstName, b.FirstName, a.Title, b.Title, a.TitleOfCourtesy, b.TitleOfCourtesy
FROM Employees a, Employees b
WHERE a.Title <> b.Title AND a.TitleOfCourtesy = b.TitleOfCourtesy

--6. CROSS JOIN- It shows all the records from both tables. Whether it matches or not.
SELECT Customers.CompanyName, Orders.OrderID 
FROM Customers
CROSS JOIN Orders
--E.g 2
SELECT Categories.CategoryName, Customers.CompanyName
FROM Categories
CROSS JOIN Customers
ORDER BY CompanyName

--7. Left anti-Join- The ANTI-JOIN is used to filter out the data that does not exist in the 
--   other table. The LEFT ANTI-JOIN returns all the data from the left table that does
--   not exist in the right table

SELECT ContactName AS CustomerName, Customers.CustomerID, OrderID
FROM Customers
LEFT OUTER JOIN Orders
    ON Customers.CustomerID = Orders.CustomerID
WHERE OrderID IS NULL
--8 Right anti-Join- RIGHT ANTI-JOIN returns all the data from the 
--  right table that does not exist in the left table.

SELECT Products.ProductID,[Order Details].ProductID,OrderID
FROM Products 
RIGHT OUTER JOIN [Order Details]
    ON Products.ProductID = [Order Details].ProductID
WHERE OrderID IS NULL
