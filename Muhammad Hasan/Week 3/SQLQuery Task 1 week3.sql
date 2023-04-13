--Task # 1

--Practice following DQL commands in SSMS:

--1 - Data Query Language (DQL):
--     • select
SELECT * FROM task8;



--     • Where clause
SELECT id, FName, Lname
FROM task8
WHERE FName = 'rehan';
--This query selects `column1`, `column2`, and `column3` from a table called `table_name` where `column1` equals `'value'`.


--     • Order By Clause

SELECT * FROM task8
ORDER BY id DESC;

--This query selects all columns from a table called `table_name`, and orders them in descending order based on values in `column_name`.

--     • Distinct Keyword


SELECT DISTINCT fname FROM task8;

-- This query selects unique values from a specific column (`column_name`) in a table (`table_name`).


--     • Isnull() function

SELECT id, ISNULL(lname, 'N/A') AS fname
FROM task8;

--This query selects `column1` and if it is null, the `ISNULL()` function replaces the null value with `'N/A'`. The second column (`column2_alias`) is an alias for the resulting column.

--     • Column aliases
SELECT FName AS 'FirstName', LName AS 'LastName' 
FROM task8;


--     • Predicates
--     		- Between ... And
--Predicates are used to filter data in the `WHERE` clause of a SQL statement. Here are a few examples:

--`BETWEEN` is used to filter data within a specified range of values.


SELECT id, FName, Lname 
FROM Task8
WHERE id BETWEEN 2 AND 5;

--This query will retrieve `Column1`, `Column2`, and `Column3` from `Table1` where the value in `Column1` is between 5 and 10.



--     		- In
--`IN` is used to match a value in a list of values.


SELECT id, FName, Lname 
FROM Task8
WHERE id IN (1,2,4);

--This query will retrieve `Column1`, `Column2`, and `Column3` from `Table1` where the value in `Column1` is either 1, 2, or 4.

--     		- Like

--`LIKE` operator is used in a `WHERE` clause to search for a specified pattern in a column.

SELECT id, FName, Lname 
FROM task8 
WHERE fname LIKE '%sa%';

--This query will retrieve `Column1`, `Column2`, and `Column3` from `Table1` where the value in `Column1` contains the string 'name'.

--     		- Is Null
--`IS NULL` is used in a `WHERE` clause to search for a column with NULL values.


SELECT id, FName, Lname
FROM Task8 
WHERE id IS NULL;

--This query will retrieve `Column1`, `Column2`, and `Column3` from `Table1` where the value in `Column1` is NULL.


--     • Top n Clause
--`TOP` is used to retrieve a specified number of rows from a table.


SELECT TOP 10 id, FName, Lname
FROM Task8;

--This query will retrieve the top 10  `Column1`, `Column2`, and `Column3` rows from `Table1`.

--     • Set Operators
--     		- Union
--UNION` is used to combine the result set of two or more `SELECT` statements into a single result set.


SELECT id, fname FROM Task8
UNION
SELECT id, fname FROM test1;

--This query combines the two `SELECT` statements with the same columns and creates a single result set without duplicates.


--     		- Intersect
--`INTERSECT` is used to return only the matching rows between two or more `SELECT` statements.
SELECT id, fname FROM Task8
INTERSECT
SELECT id, fname FROM test1;


--This query returns the rows where the `Column1` and `Column2` columns are the same in both `Table1` and `Table2`.

--     		- Except
--`EXCEPT` is used to return only the distinct rows from the first `SELECT` statement that are not present in a second `SELECT` statement.

SELECT id, fname FROM Task8
EXCEPT
SELECT id, fname FROM test1;



--This query returns the rows from `Table1` only, where the `Column1` and `Column2` columns are not in `Table2`.




