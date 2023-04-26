use NORTHWND;

/* select */
select * from Employees;




/* Where */
select * from Employees where FirstName = 'anne';




/* Order by Clauses */
select * from Employees where EmployeeID>5 order by FirstName;


/* Distinct */
select Distinct(Title) from Employees;


/* Isnull() Function */
select isnull(Region, 'WA') from Employees;


/* Column Aliases */
select LastName as surname from Employees ;


/* Predicates */ 
	/* Between... And */

	select * from Employees where Extension between 452 and 5467;

	
	/* IN */

	select * from Employees where TitleOfCourtesy in('Ms.', 'Mr')

	
	/* like */

	select * from Employees where FirstName like 'M%';

	
	/* Is Null */
	select * from Employees where Region is null;


/* Top n Clause */

Select top(3) * from Employees where LastName like 'd%';


/* Set Operators */

	/* Union */

	Select FirstName from Employees Union Select Country from Employees;


	/* Intersect */
	Select FirstName from Employees Intersect Select contactname from Customers;

	/* Except */

	Select FirstName from Employees except Select Country from Employees;