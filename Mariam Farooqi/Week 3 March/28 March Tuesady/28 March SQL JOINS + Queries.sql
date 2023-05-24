
							/*			Task # 3
							            JOINS IN SQL
								Practice following in detail: */

  /*1 - Joins:
     • Inner Join*/

	  select Customers.customerid, Orders.OrderDate
	  from Customers
	  INNER JOIN
	  ORDERS 
	  ON Customers.customerid=Orders.customerid;


	  select Employees.FirstName , Orders.OrderID
	  from Employees
	  left join
	  Orders
	  on Employees.EmployeeID=orders.EmployeeID
	  full outer join
	  [Order Details]
	  on orders.OrderID=[Order Details].OrderID;


    /* • Outer Join*/

	 select Products.ProductName, Suppliers.CompanyName
	 from Products
	 full outer join 
	 Suppliers
	 on Products.SupplierID=Suppliers.SupplierID;

	
    /* • Left Join */


	select Products.ProductName, Categories.CategoryName
	 from Products
	left join
	 Categories
	 on Products.CategoryID=categories.CategoryID


     /*• Right Join*/ 

	 select Products.ProductName, Categories.CategoryName
	 from Products
	right join
	 Categories
	 on Products.CategoryID=categories.CategoryID

     
	 /*• Self Join*/

	 select A.contactname as ContactnametableA , B.contactname as ContactnametableB
	 from Customers A,Customers B
	 where A.address <> B.address;


     /*• Cross Join*/

	 select [Order Details].Quantity , Products.ProductName
	 from [Order Details]
	 cross join
	 Products
	where [Order Details].ProductID=Products.ProductID;


     /*• Left anti-Join   left table all results which r not present in right table*/

	 select * from Products
	 where products.ProductID not in (select Discount from [Order Details]);


	 SELECT *
    FROM Customers
     WHERE CustomerID NOT IN (SELECT CustomerID FROM Orders);

     /*• Right anti-Join*/ 

	  select * from Shippers
	 where Shippers.CompanyName not in (select CompanyName from Employees);


										
										/*Task # 4



	 1 - Write a query to show a list of customers and their corresponding orders.*/

	  
	    SELECT c.CustomerID, c.CompanyName, o.OrderID, o.OrderDate 
		FROM Customers c 
		LEFT JOIN 
		Orders o 
		ON c.CustomerID = o.CustomerId
		ORDER BY c.CustomerID, o.OrderID


   /*2 - Write a query to show a list of employees and their corresponding managers:*/
     
	    SELECT e.FirstName + ' ' + e.LastName AS EmployeeName, 
       m.FirstName + ' ' + m.LastName AS ManagerName
       FROM Employees e
       LEFT JOIN Employees m ON e.ReportsTo = m.EmployeeID;

        
   /*3 - Write a query to show a list of customers who have not placed any orders.*/

      select Customers.CustomerID, Orders.OrderID
	  from Customers
	  left join 
	  Orders
	  on Customers.CustomerID=Orders.CustomerID
	  where Orderdate=null;


   /* 4 - Write a query to show a list of employees and their corresponding 
    territories, including those employees who have no territories assigned.*/ 


	 SELECT e.EmployeeID, e.FirstName, e.LastName ,t.TerritoryID, t.TerritoryDescription
	 from Employees e
	  left  join
	 EmployeeTerritories et
	 on e.EmployeeID=et.EmployeeID
	  left join
	 Territories t
	 on et.TerritoryID=t.TerritoryID
	 ORDER BY e.EmployeeID 
	

	


	 



	 

	
