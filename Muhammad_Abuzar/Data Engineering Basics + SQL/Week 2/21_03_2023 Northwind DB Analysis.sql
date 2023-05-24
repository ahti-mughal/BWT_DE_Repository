----NORTHWIND

--Show all tables in the Northwind database:
USE NORTHWND
SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE = 'BASE TABLE'


--Show all columns in a specific table:
USE NORTHWND
SELECT COLUMN_NAME FROM information_schema.columns WHERE table_name = 'Customers'


--Show the top 10 rows in a specific table (e.g., the Orders table):
USE NORTHWND
SELECT TOP 10 * FROM Orders
