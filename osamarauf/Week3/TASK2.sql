--Retrieve the product name, unit price, and units in stock of all products that cost less than $20, ordered by product name.
select * from northwind.dbo.Products;
select * from northwind.dbo.Categories;
select * from northwind.dbo.[Order Details];
select * from northwind.dbo.Orders;

select ProductName, UnitPrice, UnitsInStock from northwind.dbo.Products where UnitPrice<20 order by 1;

--Retrieve the order ID, customer ID, and order date of all orders that do not have a customer ID, ordered by order date.
select OrderID, CustomerID, OrderDate from northwind.dbo.Orders where CustomerID is null order by 3;

--Retrieve the category names of all products, as well as the countries to which orders have been shipped, without any duplicates.
SELECT DISTINCT CategoryName, ShipCountry
FROM northwind.dbo.Categories, northwind.dbo.Products, northwind.dbo.Orders, northwind.dbo.[Order Details], northwind.dbo.Customers
WHERE Categories.CategoryID = Products.CategoryID
AND Products.ProductID = [Order Details].ProductID
AND [Order Details].OrderID = Orders.OrderID
AND Orders.CustomerID = Customers.CustomerID
ORDER BY CategoryName, ShipCountry;
