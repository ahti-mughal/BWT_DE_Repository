/* ========================================
1 - Write an SQL query to insert multiple rows into a table using a single INSERT statement.
==========================================*/

/*use practice_db;

insert into mytable(name,age)
values ('Bilal',23),
		('Hafiz',18),
		('Aziz',45),
		('Khan',32)
*/

/* ========================================
2 - Write an SQL query to delete all the rows from a table that have a certain value in a column.
==========================================*/

/*use Northwind;

delete from Orders
where EmployeeID = 3 */

/* ========================================
3 - Write an SQL query to delete all the rows from 
a table that have a certain value in a column, and that meet a certain condition in another column.
==========================================*/

/*use Northwind;

delete from Orders
where EmployeeID = 3 and ShipVia = 1;*/

/* ========================================
4 - Write an SQL query to update multiple columns
in a table based on a condition using the UPDATE statement.
==========================================*/

/*
use Northwind

UPDATE Orders
set ShippedDate = GetDate() , ShipPostalCode = 38000, ShipCountry = 'FSD'
where OrderID = 10252;*/
