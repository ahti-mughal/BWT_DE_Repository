-- Write a query to retrieve the names of all products that have been ordered more than 50 time.
	select * from products
	select * from [Order Details]

	select * from products join
	(select productid, count(*) as order_count from [Order Details] group by ProductID) as OrderCount
	on products.ProductID = OrderCount.ProductID where order_count>50
	

-- Write a query to retrieve the names of all products that have been ordered at least once.
	select ProductName, OrderCount.order_count from products join
	(select productid, count(*) as order_count from [Order Details] group by ProductID) as OrderCount
	on products.ProductID = OrderCount.ProductID where order_count>0

-- Create a view that shows the total revenue generated by each category.

GO
	create view revenue_by_category
	as 
	select  categoryname, round(sum([Order Details].UnitPrice * Quantity * (1-[Order Details].Discount)),3) as revenue from Categories
	inner join Products on Products.CategoryID = Categories.CategoryID
	inner join [Order Details] on [Order Details].ProductID = Products.ProductID
	group by Categories.CategoryName
GO

select * from revenue_by_category
