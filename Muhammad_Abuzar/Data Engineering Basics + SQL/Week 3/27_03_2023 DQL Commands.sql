--SELECT
SELECT column1, column2
FROM table_name;


--WHERE
SELECT column1, column2
FROM table_name
WHERE column1 = 'value';


--ORDER BY
SELECT column1, column2
FROM table_name
ORDER BY column1 ASC;


--DISTINCT
SELECT DISTINCT column1
FROM table_name;


--ISNULL FUNCTION
SELECT ISNULL(column1, 'NA')
FROM table_name;


--COLUMN ALIASES
SELECT column1 AS 'alias1', column2 AS 'alias2'
FROM table_name;


--PREDICATES
--BETWEEN AND
SELECT column1, column2
FROM table_name
WHERE column1 BETWEEN 'value1' AND 'value2';


--IN
SELECT column1, column2
FROM table_name
WHERE column1 IN ('value1', 'value2', 'value3');


--IS NULL
SELECT name
FROM customers
WHERE name IS NULL;


--TOP N CLAUSE
SELECT TOP 50 * FROM customers;

--SET OPERATORS
--UNION
SELECT name FROM customers
UNION
SELECT name FROM orders;

--INTERSECT
SELECT column1, column2, ...
FROM table1
INTERSECT
SELECT column1, column2, ...
FROM table2;

--EXCEPT
SELECT column1, column2, ...
FROM table1
EXCEPT
SELECT column1, column2, ...
FROM table2;
