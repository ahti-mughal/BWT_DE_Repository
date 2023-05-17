-- Task # 1

-- Practice following DQL commands in SSMS:

-- 1 - Data Query Language (DQL):
--     • select
	select * from Products
--     • Where clause
	select * from products where UnitPrice>50 and UnitPrice<100
--     • Order By Clause
	select SupplierID as 'Supplier ID',COUNT(*) as 'Number of Products'
	from products group by SupplierID
--     • Distinct Keyword
	select distinct CategoryID as 'All Category ID' from products;
--     • Isnull() function
	select * from Customers
	select contactName as 'Customer Name', 
	ISNULL(Region,'Not Available') from Customers
--     • Column aliases
	select contactName as 'Customer Name', 
	ISNULL(Region,'Not Available') from Customers
--     • Predicates
--     		- Between ... And
	select CustomerID, EmployeeID ,Freight from 
	Orders where Freight between 30 and 50
--     		- In
	select * from Customers
	select * from Customers where Country
	in ('Argentina','Mexico','Germany')
--     		- Like
	select * from Customers where City like 'Buenos%'
--     		- Is Null
	select * from customers where Fax is null
--     • Top n Clause
	select top 5 customerId, CompanyName, ContactTitle from Customers
--     • Set Operators
--     		- Union
	select CompanyName as 'Company Name' from Customers
	union
	select ProductName as 'Product Name' from Products
--     		- Intersect
--     		- Except
