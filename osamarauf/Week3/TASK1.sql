--select
select * from northwind.dbo.Customers
select * from northwind.dbo.Contacts
--where
select CustomerID, CompanyName, ContactName, ContactTitle from northwind.dbo.Customers where ContactTitle = 'Owner';

--OrderBy
select CompanyName, Address, City, Country from northwind.dbo.Customers where Country = 'UK' Order by 1;

--Distinct
select Distinct(Country) from northwind.dbo.Customers;

--IsNull()
select City, Region, Country, ISNULL(Region, 'unknown') as Region from northwind.dbo.Customers;

--Column Aliases
select ShipName, OrderDate, ShippedDate, ShipAddress, Freight as Delivery_charges from northwind.dbo.Orders where Freight > 100;

--Predicates
	--Between
select OrderID, OrderDate from northwind.dbo.Orders where OrderDate between '1997-04-01' and '1998-04-01';

	--In
select * from northwind.dbo.orders where ShipCountry IN ('USA', 'UK');

	--Like
select * from northwind.dbo.Customers where CompanyName like 'A%';

	--Is Null
select City, Region, Country from northwind.dbo.Customers where Region is null;

select top 5 ShipCountry, Freight from northwind.dbo.Orders order by Freight Desc;

--Set Operators
	--Union

select CustomerID, City from northwind.dbo.Customers
union select CustomerID, ShipCity from northwind.dbo.Orders
order by 1; 

	--Intersect
select CustomerID, Country from northwind.dbo.Customers
intersect select CustomerID, ShipCountry from northwind.dbo.Orders
order by 1;

	--Except
select ContactName from northwind.dbo.Contacts
except select ContactName from northwind.dbo.Customers;