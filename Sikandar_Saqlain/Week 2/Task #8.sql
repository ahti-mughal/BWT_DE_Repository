--1. Write an SQL query to insert multiple rows into a table using a single INSERT statement.
INSERT INTO Categories
VALUES ('Electronics', 'Electronic Devices', NULL), ('Gardening Equipment', 'Gardening tools', NULL), ('Furniture', 'Chairs, tables, doormats etc.', NULL);


--2. Write an SQL query to delete all the rows from a table that have a certain value in a column.
DELETE FROM Customers
WHERE City = 'Berlin';

--3. Write an SQL query to delete all the rows from a table that have a certain value in a column, and that meet a certain condition in another column.
DELETE FROM Orders
WHERE ShipCity = 'London'
AND OrderDate > '1996-08-01';


--4. Write an SQL query to update multiple columns in a table based on a condition using the UPDATE statement.
UPDATE Products
SET Discontinued = 1
WHERE SupplierID = 3;
