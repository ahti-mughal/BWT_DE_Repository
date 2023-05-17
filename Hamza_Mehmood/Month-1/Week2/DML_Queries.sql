Create Database task7_8;
use task7_8;
-- Create a table with an Identity column
CREATE TABLE ExampleTable (
   ID int IDENTITY(1,1) PRIMARY KEY,
   Name varchar(50),
   Age int
)
-- Insert data into the table
INSERT INTO ExampleTable (Name, Age) VALUES ('Hamza', 30)
INSERT INTO ExampleTable (Name, Age) VALUES ('Mehmood', 25)

-- Create a table called NewTable based on the results of a SELECT statement
SELECT Name, Age
INTO NewTable
FROM ExampleTable
WHERE Age > 25


-- Create a new table called OtherTable
CREATE TABLE OtherTable (
   ID int,
   Name varchar(50),
   Age int
)

-- Insert data from ExampleTable into OtherTable
INSERT INTO OtherTable (ID, Name, Age)
SELECT ID, Name, Age
FROM ExampleTable
WHERE Age > 20

-- Update  data from OtherTable 
UPDATE OtherTable
SET Age = '31'
WHERE ID = 1;

-- Insert data from OtherTable 
DELETE FROM OtherTable
WHERE Id = 1;

-- Deleting whole OtherTable Table
TRUNCATE TABLE OtherTable;

-- Write an SQL query to insert multiple rows into a table using a single INSERT statement.
INSERT INTO OtherTable (ID, Name, Age)
VALUES
(4, HA, 12),
(5, ME, 55),
(6, DE, 24);

-- Write an SQL query to delete all the rows from a table that have a certain value in a column.
DELETE FROM OtherTable
WHERE Name = 'HA';

-- Write an SQL query to delete all the rows from a table that have a certain value in a column, and that meet a certain condition in another column.
DELETE FROM OtherTable
WHERE Name = 'HA' AND Age < '12';

--Write an SQL query to update multiple columns in a table based on a condition using the UPDATE statement.
UPDATE OtherTable
SET Name = 'HB', Age = '57'
WHERE ID = '4';


