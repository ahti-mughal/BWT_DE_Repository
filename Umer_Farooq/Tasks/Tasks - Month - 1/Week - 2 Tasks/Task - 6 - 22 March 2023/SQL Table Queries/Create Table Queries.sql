-- Creating a table
CREATE TABLE student(
id INT PRIMARY KEY,
name VARCHAR(50),
email VARCHAR(100) UNIQUE,
enrollment_date DATE NOT NULL
);

-- Inserting Data
INSERT INTO student (id, name, email, enrollment_date)
VALUES
  (1, 'John Smith', 'john.smith@example.com', '2023-03-27'),
  (2, 'Jane Doe', 'jane.doe@example.com', '2023-03-27'),
  (3, 'Bob Johnson', 'bob.johnson@example.com', '2023-03-27');

SELECT * FROM student;

-- A copy of an existing table can also be created using CREATE TABLE.
-- The new table gets the same column definitions. 
-- All columns or specific columns can be selected.
-- If you create a new table using an existing table, 
-- the new table will be filled with the existing values from the old table.

SELECT e.FirstName, e.Title, e.HireDate, e.City, e.Notes
INTO testing_table
FROM northwind.dbo.Employees as e;

SELECT * FROM testing_table;

