
							    /*Task #1 

					Practice following DQL commands in SSMS:*/


	/*1 - Data Query Language (DQL):

     • select*/

	  select * from Categories;

	  select orderid from Orders;


    /* • Where clause*/

	 select orderid from orders where ShipCity='oulu';


     /*• Order By Clause*/

	 select * from orders order by ShipVia DESC;

	 SELECT firstname,BirthDate from Employees order by BirthDate;


    /* • Distinct Keyword*/

	select DISTINCT PHONE FROM SHIPPERS;

	SELECT COUNT (DISTINCT PHONE) FROM CUSTOMERS;


     /*• Isnull() function*/

	 SELECT COUNT (postalcode) from Employees where FirstName IS NOT NULL;
	 SELECT COUNT (postalcode) from Employees where EmployeeID IS NULL;
	  SELECT REGION FROM Customers WHERE Region IS NULL;
	

     /*• Column aliases*/

	 SELECT Regionid AS REGIONALID FROM Region;


	 
    /* • Predicates
     - Between ... And*/

			select city from Suppliers where SupplierID between 10 and 20;

			select count(city) from Suppliers where SupplierID not between 10 and 20;

     /*- In */
	 select * from Categories where CategoryName in('produce', 'meat/poultry');
	 select * from Categories where CategoryName not in('produce', 'meat/poultry');
	 
     /*- Like */
	 select firstname from Employees where firstname like 'a___';
     		
     /*• Top n Clause*/

	 SELECT TOP 50 PERCENT * FROM Customers;
	 SELECT TOP 3 REGIONID FROM REGION;
	 
    /* • Set Operators
     		- Union*/

			select city as totalcity from Employees 
			union 
			select address from Suppliers;

     		/*- Intersect*/

			select city as totalcity from Employees 
			intersect 
			select City from Suppliers;

     		/*- Except */

			select city as totalcity from Employees 
			except
			select city from Suppliers;


										/*Task # 2

						Write the following queries using Northwind DB:*/


   /* 1 - Retrieve the product name, unit price, 
	and units in stock of all products that cost less than $20, ordered by product name.*/

select productname , unitprice , unitsinstock from Products where UnitPrice<20 order by ProductName;

    /* 2 - Retrieve the order ID, customer ID, and order 
   date of all orders that do not have a customer ID, ordered by order date. */

  select orderid , customerid , orderdate from Orders where CustomerID=null order by OrderDate;


	/*3 - Retrieve the category names of all products, 
	as well as the countries to which orders have been shipped, without any duplicates.*/

	select distinct categoryname , shipcity from Categories, Orders;
	

