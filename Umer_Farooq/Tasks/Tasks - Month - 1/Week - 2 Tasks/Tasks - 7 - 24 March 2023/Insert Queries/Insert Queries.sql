-- Lets Create a Table:
-- 1. Identity:
-- Identity property allows you to automatically generate sequential numbers 
-- for a column when new row is inserted.

CREATE TABLE exam(
id INT IDENTITY(1,1), -- Id is Identity column with a starting value of 1 and an increment of 1
exam_name VARCHAR(50),
stu_name VARCHAR(50)
);


-- 2. There are multiple ways to create table from another existing table
DROP TABLE IF EXISTS new_table;
-- Creating new table from another table
SELECT * 
INTO new_table
FROM myDB.dbo.testing_table
-- It will not copy any data if you write this: WHERE 1=0;

SELECT * FROM new_table;


-- 3. Inserting rows from one table into another table
SELECT * 
INTO abc
FROM myDB.dbo.testing_table
WHERE 1=0;

SELECT * FROM abc;

INSERT INTO abc(FirstName, Title,HireDate, City, Notes)
SELECT e.FirstName, e.Title, e.HireDate, e.City, e.Notes
FROM northwind.dbo.Employees AS e; -- We can also use WHERE to INSERT only data that we need