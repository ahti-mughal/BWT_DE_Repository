-- Write an SQL query to insert multiple rows into a table using a single INSERT statement.

-- As far as i know, there are multiple ways to insert multiple rows using a single INSERT command.
CREATE TABLE MyTable(
ID INT PRIMARY KEY IDENTITY(1,1),
Name VARCHAR(50),
Age INT
);

-- Inserting Using Value clause with Multiple Values:
INSERT INTO MyTable(Name, Age)
VALUES ('John', 25),
       ('Jane', 30),
       ('Bob', 45),
       ('Alice', 22),
       ('Mike', 38),
       ('Lisa', 28),
       ('Tom', 50),
       ('Samantha', 29),
       ('David', 33),
       ('Sarah', 27);

SELECT * FROM MyTable;

-- Using Insert Into -- Select:
INSERT INTO MyTable (Name, Age)
SELECT 'Ali', 25 UNION ALL
SELECT 'Ahmed', 30 UNION ALL
SELECT 'Khan', 45;