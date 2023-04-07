-- A query is a request for data from a Database Table (or Combination of Tables).

-- In SQL, you can select data from a table using a SELECT command.

-- Lets Simply Select a Single column in Countries Table:
SELECT name AS CountryName
FROM countries;

-- Selecting 2 columns in a table:
SELECT name, capital
FROM countries;

-- Selecting All Columns in a Table: For this we use * wildcard
SELECT * 
FROM countries; 

-- Selecting Columns and limiting the rows returned
-- For this we use TOP to specify the maximum number of rows to return from a query
SELECT TOP 10 * 
FROM countries;

-- We can also count no of rows:
SELECT COUNT(*)
FROM countries;