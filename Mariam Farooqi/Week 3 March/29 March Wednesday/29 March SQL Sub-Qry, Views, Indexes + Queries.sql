
											/*Task # 5
											Sub Queries:

 Practice following in detail:

1 - Sub Queries:*/

   
    /*• Single Row Sub Queries*/

	select firstname , lastname, (select hiredate where hiredate>'1993') from Employees;

    /* • Multi Row Sub Queries*/ 

	select * from orders where orderid in (select orderid from [Order Details] where Quantity>10);


    /*• Nested Sub Queries*/

	select * from customers where CustomerID in (select customerid from orders where OrderDate>
	(select quantity from [Order Details]));


     /*• Co-Related Sub Queries*/
	 select* from [Order Details]
	 where Quantity>
	 (
	   select count(orderid) from Orders
	   where [Order Details].OrderID=Orders.OrderID
	 );




	 /*2 - Views:
     • Purpose Of Views

	 views are created for security purpose so that user cannot interfere with underlying db
	 but with the view to prevent updation in original db.user can only interact 
	 with view which is a virtual table.


     • Creating  Altering View*/
	 
	  create view [customerview]
	  as 
	  select companyname , customerid from customers;
	 
	alter view [expensiveproducts]
	 as
	 select * from products where unitprice>10
	 group by UnitPrice;

	 select * from expensiveproducts;

	 alter table products 
	 add expprod varchar(100);

	 select * from Products;

	 drop view expensiveproducts;
	 alter table products
	 drop column expprod;

	 insert into Products values(51,'Manjimup Dried ',24,7,'50 - 300 g pkgs.',53,20,0,10,0);
	
	 
	  
	  ALTER VIEW [CUSTOMERVIEW]
	  AS
	  SELECT companyname , customerid from customers
	  WHERE Country='UK';

	  select * from CUSTOMERVIEW;
	  

	 alter view [expensiveproducts]
	 as
	 select * from products where unitprice>10;
	 



	  /*Dropping Views*/

	  drop view customerview;


	  /*update Views*/
	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
	  update expensiveproducts 
	  set expprod='hi' where productid=1;


     /*• Simple Views */


	 alter view [expensiveproducts]
	 as
	 select * from products where productname='chai';
	 with check option;
	 
   	 select * from expensiveproducts;


	 /*Complex Views*/
	 create view employeeview
	 as
	 select firstname , lastname
	 from Employees
	 inner join
	 orders
	 on Employees.EmployeeID=Orders.EmployeeID;

	

	 /*3 - Indexes*/:


		 CREATE index revenue 
		  on products(productname);




												/*Task # 6

								Write the following queries using Northwind DB:



  1 - Write a query to retrieve the names of all products that have been ordered more than 50 time.*/

    select Products.ProductName,[Order Details].OrderID 
	from Products 
	inner join [Order Details]
	on Products.ProductID=[Order Details].ProductID
	inner join
	Orders
	on [Order Details].OrderID=Orders.OrderID
	WHERE  [Order Details].Quantity > 50
    
	
	select * from products where productid in (select productid from [Order Details] where OrderID in
    (select orderid from Orders where Quantity>50))




/*2 - Write a query to retrieve the names of all products that have been ordered at least once.*/

  
     select * from products where productid in (select productid from [Order Details] where OrderID in
    (select orderid from Orders where Quantity>0))



3 - Create a view that shows the total revenue generated by each category.
      

	   CREATE VIEW category_revenue 
			  AS
		SELECT c.CategoryName, SUM(od.UnitPrice * od.Quantity * (1 - od.Discount)) AS TotalRevenue
		FROM Categories c
		JOIN Products p ON c.CategoryID = p.CategoryID
		JOIN [Order Details] od ON p.ProductID = od.ProductID
		GROUP BY c.CategoryName;

		select * from category_revenue;





		 