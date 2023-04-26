/* 1 - Retrieve the product name, unit price, and units in stock of all products that cost less than $20, ordered by product name. */

Select ProductName, UnitPrice, UnitsInStock from Products where UnitPrice < 20 order by productName;

/* 2 - Retrieve the order ID, customer ID, and order date of all orders that do not have a customer ID, ordered by order date. */

Select OrderID, CustomerID, OrderDate from Orders where CustomerID is null order by OrderDate;

/* 3 - Retrieve the category names of all products, as well as the countries to which orders have been shipped, without any duplicates.*/

Select CategoryName from Categories union select  distinct(Shipcountry) from Orders;
