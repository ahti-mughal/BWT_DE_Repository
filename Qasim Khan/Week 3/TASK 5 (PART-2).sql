/* SQL CREATE VIEW Statement
In SQL, a view is a virtual table based on the result-set of an SQL statement.

A view contains rows and columns, just like a real table. The fields in a view are fields from one or more real tables in the database.

You can add SQL statements and functions to a view and present the data as if the data were coming from one single table.

A view is created with the CREATE VIEW statement. 
*/

USE northwind

CREATE VIEW Brazil_Customers AS
SELECT *
FROM Customers
WHERE Country='Brazil'

--We can query the view above as follows:
SELECT * 
FROM Brazil_Customers



/* SQL Dropping a View
A view is deleted with the DROP VIEW statement.
*/

DROP VIEW Brazil_Customers