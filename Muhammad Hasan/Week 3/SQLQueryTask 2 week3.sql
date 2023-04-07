--Write the following queries using Northwind DB:

--1 - Retrieve the product name, unit price, and units in stock of all products that cost less than $20, ordered by product name.

select ProductName, UnitPrice, UnitsInStock from Products 
where UnitPrice <20 Order by ProductName;

--2 - Retrieve the order ID, customer ID, and order date of all orders that do not have a customer ID, ordered by order date.

select OrderID, CustomerID, OrderDate from Orders 
where CustomerID IS NOT NUll Order by OrderDate;

--3 - Retrieve the category names of all products, as well as the countries to which orders have been shipped, without any duplicates.

select distinct c.CategoryName,o.shipCountry from 
Categories c,Products p,Orders o 
where c.CategoryID = p.CategoryID 





