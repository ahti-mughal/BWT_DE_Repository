use NORTHWND; 
/* Sub Queries */

	/* Single Row Sub query */

	/* when subqeury returns only one or zero row */
	select Quantity from [Order Details] where UnitPrice > 
		(select Avg(UnitPrice) from [Order Details]);

	select QuantityPerUnit from Products where UnitPrice < 
		(select AVG(UnitPrice) from Products);


	/* Multiple Row Sub queries */
	/* The Subquery return more than one row */
	/* E.g IN(), > ANY, <ALL */

	select FirstName, LastName from Employees where EmployeeID IN (
	 select EmployeeID from orders where ShipCountry IN ('Germany','USA'));


	Select ShippedDate from Orders where CustomerID IN (
	select CustomerID from Customers where Country IN ('Spain','France'));

	/* Coorelated Subqueries */
	/* The result depends upon the outer query column.*/
	select * from Orders where not exists   (select EmployeeID from Employees where orders.EmployeeID = Employees.EmployeeID);
	select *, (select count(*) from employees where employees.EmployeeID = orders.EmployeeID) from Orders;

/* Views */

	/* Purpose of Views */

	/*

	The Views are Containers or virtual tables in our data base that contains SQL queries. 
	Views can be use multiple times repeatedly with out a re write.
	Views can limit the access to Database. They may not provide certain users access to actual tables.

	*/
	Select * from Employees;

	/* View Creation */


	Create View Employee1
	as select Title, FirstName, LastName from Employees ;

	Select * from Employee1;

	Create View Customers1
	as select CompanyName, ContactName from Customers;

	Select * from Customers1;


	/* Views Altering */

	alter View Employee1 as
	select Title, FirstName, LastName from Employees
	where Region = 'WA';

	alter View Customers1
	as select CompanyName, ContactName from Customers 
	where Region = 'SP';

	/* Views Dropping */

	Drop View Customers1;
	Drop View Employee1;

/* Indexing */

	/*
	Similar to book index
	A lookup table used to find information
	Indexes are ordered copy of selected columns defined by admin
	Imporve performance but also require extra storage
	*/

	/* Clustered Index */
	
	/*

	Data is stored in underlying table in same order as primary key
	BTrees are used in Clustered Indexes which
	Always Unique
	Non nullable
	One Per Table { impossible to store same physical data in two different ways without a seperated structure }
	Primary keys

	*/

	/* NonClustered Index */

	/*
	Secodary Index
	Single or muliple columns
	Unique or Non Unique
	*/
	
	/* Create Indexes */

	Create index IX_indexcustomer 
	on Customers (CompanyName ASC);

	Create Nonclustered index IX_order
	on Orders (shipName asc);

	/* Drop Indexes */
	drop Index IX_indexcustomer;
	drop Index IX_order;
	/* Using Index */

	Select ShipName from Orders with (index(IX_order)) where ShipName Like 'B%';
	