CREATE DATABASE sampleDB

-- INSERT:
-- a) Identity:
-- Let's create a table that uses an identity column:

CREATE TABLE Employee (
    EmployeeID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    Salary MONEY
);

-- This creates a table called "Employee" with an identity column called "EmployeeID." The identity column will automatically increment by 1 for each row inserted into the table. The primary key is set to the identity column.
-- Now let's insert some data into the table:

INSERT INTO Employee (FirstName, LastName, Age, Salary)
VALUES ('John', 'Doe', 30, 50000),
       ('Jane', 'Doe', 25, 40000),
       ('Bob', 'Smith', 45, 75000);

-- This inserts three rows into the "Employee" table.
-- b) Creating a table from another table:
-- Let's create a new table called "Employee2" that has the same schema as the "Employee" table:

SELECT *
INTO Employee2
FROM Employee
WHERE 1=0;

-- This creates a new table called "Employee2" with the same columns as the "Employee" table, but no rows.
-- c) Inserting rows from one table to another:
-- Let's insert some data from the "Employee" table into the "Employee2" table:

INSERT INTO Employee2 (FirstName, LastName, Age, Salary)
SELECT FirstName, LastName, Age, Salary
FROM Employee
WHERE Age > 30;

-- This inserts all rows from the "Employee" table where the age is greater than 30 into the "Employee2" table.
-- UPDATE:
-- Let's update the salary of all employees with a salary less than 50000 to 55000:

UPDATE Employee
SET Salary = 55000
WHERE Salary < 50000;

This updates the "Salary" column of the "Employee" table for all rows where the "Salary" is less than 50000.

-- DELETE:
-- a) Truncate:
-- Let's truncate the "Employee2" table:

TRUNCATE TABLE Employee2;

-- This removes all rows from the "Employee2" table.
-- b) Difference between delete & truncate:
-- Let's delete all rows from the "Employee" table where the age is less than 30:

DELETE FROM Employee
WHERE Age < 30;

-- This removes all rows from the "Employee" table where the age is less than 30.
-- The difference between "DELETE" and "TRUNCATE" is that "DELETE" removes specific rows from a table based on a condition, while "TRUNCATE" removes all rows from a table. Additionally, "TRUNCATE" is faster than "DELETE" since it does not log individual row deletions. However, "TRUNCATE" cannot be rolled back, while "DELETE" can be rolled back if used in a transaction.