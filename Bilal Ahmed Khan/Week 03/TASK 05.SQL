-- Single Row Sub Queries
	Select * from [Order Details] 
	Where UnitPrice >= (
						select avg(unitPrice) 
						from [Order Details]
						)
	
-- Multi Row Sub Queries
	select * from [Order Details]  where productid in (
			select productid from Products where UnitsInStock<5
						) 

-- Nested Sub Queries
	select * from orders where OrderID in (
		Select OrderID from [Order Details] 
			Where UnitPrice >= (
						select avg(unitPrice) 
						from [Order Details]
						))

-- Co-Related Sub Queries


-- Views:
-- Purpose Of Views
-- -> vIews are used to hide unnecessary details from the users and only showing data which concerns them
-- -> Views are also quicker than loading the complete table since we are only querying the data we want to load.
-- -> You can combine multiple table to form a view.

-- Creating , Altering and Dropping Views
GO 
CREATE VIEW  order_summary
 as
 select Orders.OrderID,Orders.OrderDate,Customers.CustomerID,Products.ProductName,Customers.ContactName,
  (Products.UnitPrice*[Order Details].Quantity)-((Products.UnitPrice*[Order Details].Quantity)*[Order Details].Discount ) as cost
  from Customers 
  INNER join Orders on Customers.CustomerID= Orders.CustomerID
  INNER join [Order Details] on [Order Details].OrderID=Orders.OrderID
  INNER join Products on Products.ProductID=[Order Details].ProductID; 
GO

	SELECT * FROM order_summary
	DROP VIEW order_summary
-- Simple  Views
	GO
	create view employee_info 
	as
	select firstName+' '+LastName as Name, Title,country from Employees
	GO
	select * from employee_info

-- Complex Views
	select * from Products
	select * from [Order Details]

GO	
	create view product_details_in_orders
	as
	select O.orderid,O.productid,p.ProductName,O.unitPrice, O.Quantity from [Order Details] O
	inner join Products p
	on p.ProductID=O.ProductID where O.Discount <> 0

GO
	select ProductName,count(*) from product_details_in_orders group by ProductName order by count(*)
-- Indexes
	create	
-- Clustered Index



-- NonClustered Index


--Create , Alter and Drop Indexes


-- Using Indexes

