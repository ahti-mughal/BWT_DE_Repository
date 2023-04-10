-- Delete is used to remove one or multiple rows from Table.
-- General Syntax:

-- DELETE [ TOP ( expression ) [ PERCENT ] ]  
-- FROM table_name
-- [WHERE search_condition];

-- First of all lets create a copy of table from Northwind Database Tables:
DROP TABLE IF EXISTS sql_testing;

-- Creating Table
SELECT c.ContactName, c.ContactTitle, c.CompanyName, c.Country, c.Address
INTO sql_testing
FROM northwind.dbo.Customers as c

-- Retrieving Data
-- There are total 91 records
SELECT * FROM sql_testing;

-- Deleting the TOP 10 records, 
-- As SQL Server does not allow Delete Top, we can achieve this by using CTE or Subquery
WITH top_10 AS -- This is Called CTE
(
SELECT TOP 10 * -- it selects top 10 rows from the table 
FROM sql_testing
)
DELETE FROM top_10; -- Records that are selected from CTE are deleted

-- Delete Records of Customers that belongs to Brazil
DELETE FROM sql_testing 
WHERE Country = 'Brazil';

Select * From sql_testing Where Country = 'Brazil';

-- Similarly, you can delete all records by simply execuating the command:
-- DELETE FROM sql_testing;