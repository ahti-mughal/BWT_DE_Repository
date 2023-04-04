use Northwind

/*#######################################
===== Data Query Language (DQL): ========
########################################*/

/*======= Select ================*/

SELECT TerritoryDescription
FROM Territories;

/*======= Where ================*/

SELECT * FROM Territories WHERE TerritoryDescription = 'Santa Cruz';

/*======= Order ================*/

select TerritoryID,TerritoryDescription
from Territories
order by TerritoryID Desc;

/*======= Distinct ================*/

SELECT DISTINCT CompanyName FROM Customers;

/*======= ISNULL ================*/

SELECT ISNULL(Region, 'Asia') FROM Customers;

/*======= Column Aliases ================*/

SELECT TitleOfCourtesy AS Title FROM Employees;

/*======= Predicates ================*/

/*	Between	*/

select * from Products where UnitPrice between 5 and 50;

/*	In	*/

select * from Products where UnitPrice in (18,19,20);

/*	Like	*/

SELECT * FROM Territories WHERE TerritoryDescription Like 'Santa ';

/*	ISNULL	*/

select * from Customers where Region is null;

/*======= Top 10 Clause ================*/

SELECT TOP 10 * FROM employees;

/*======= Set operators ================*/

/*	Union	*/

select CompanyName from Customers
union
select ProductName from Products

/*	Intersect	*/

select CompanyName from Customers
intersect
select ProductName from Products

/*	Except	*/

select CompanyName from Customers
except
select ProductName from Products