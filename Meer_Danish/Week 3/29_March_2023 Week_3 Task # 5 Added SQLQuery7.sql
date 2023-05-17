/*29_March_2023 Task # 5 Added*/
/*MEER DANISH*/

use Northwind

/*Single Row Sub Queries*/
SELECT * FROM Products
WHERE UnitsInStock > (SELECT AVG(UnitsInStock) FROM Products)

SELECT Top 5 ProductName FROM Products
WHERE UnitsInStock > (SELECT AVG(UnitsInStock) FROM Products)
Order By ProductName

/*Multi Row Sub Queries*/
select FirstName  
from Employees
where ReportsTo IN (Select EmployeeID from Employees
where Title =(
Select Title from Employees
where EmployeeID = ReportsTo))

Select ProductName, UnitPrice from Products
where CategoryID IN (
  Select CategoryID from Categories
  where CategoryName = 'Beverages'
) AND SupplierID In (
  Select SupplierID From Suppliers
  where Country = (
  select Country
  from Customers 
   Where CustomerID = 'ALFKI'
  )
)

/*Nested Sub Queries*/
Select CompanyName,ContactName,Phone 
from Customers
where CustomerID IN (
  Select CustomerID 
  from Orders
  where OrderID IN (
  select OrderID
  from [Order Details]
  where ProductID = (
  select ProductID 
  from Products 
  where ProductName = 'Chai'
  )
  )
)




select * 
from [Order Details]
where OrderID IN (
 select OrderID
 from Orders
 where CustomerID IN (
 Select CustomerID 
 from Orders
 where YEAR(OrderDate) = 1998
 )
 AND CustomerID NOT IN(
 Select CustomerID 
 from Orders
 where YEAR(OrderDate) = 1996
))

/*Co-Related Sub Queries*/
Select ProductName, UnitPrice, CategoryID
from Products p1
where UnitPrice > (
Select avg(UnitPrice) from Products p2
where p1.CategoryID = p2.CategoryID
)

SELECT OrderID, CustomerID, OrderDate
FROM Orders o1
WHERE OrderDate > (
 SELECT AVG(OrderDate)
 FROM Orders o2
 WHERE o2.CustomerID = o1.CustomerID
)


                              /*Task # 5 Part 2*/
/* Purpose Of Views */
/* In SQL, a view is a virtual table that is created by a query. The purpose of creating a view is to provide 
a different perspective or representation of the underlying data in the database,
without changing the original data itself. 

The key purposes of views in SQL are:

1. Simplifying queries:

Example:
CREATE VIEW order_details AS
SELECT orders.order_id, customers.customer_name, products.product_name, orders.quantity
FROM orders
JOIN customers ON orders.customer_id = customers.customer_id
JOIN products ON orders.product_id = products.product_id;

2.Enhancing security:

Example:
CREATE VIEW salary_view AS
SELECT employee_id, first_name, last_name, salary
FROM salaries;

This view only shows certain columns of the salaries table,
and access to this view can be restricted to certain users or roles.

3.Abstraction:

Example:
CREATE VIEW customer_orders AS
SELECT customers.customer_name, orders.order_id, orders.quantity, orders.order_date
FROM customers
JOIN orders ON customers.customer_id = orders.customer_id;

This view combines data from the customers and orders tables,
and provides a simplified view of the data that is easier to work with.

4.Data consistency:

Example:

CREATE VIEW in_stock_sales AS
SELECT sales.product_id, sales.region, sales.quantity, products.in_stock
FROM sales
JOIN products ON sales.product_id = products.product_id
WHERE products.in_stock = 'yes';

This view only shows sales data for products that are currently in stock,
and can be used to enforce business rules or constraints.

5.Reducing data duplication:

Example:

CREATE VIEW customer_orders AS
SELECT customers.customer_id, customers.customer_name, orders.order_id, orders.order_date
FROM customers
JOIN orders ON customers.customer_id = orders.customer_id;

This view combines data from the customers and orders tables, 
and eliminates the duplication of customer information across multiple orders.

*/
/* Creating a View */
Create View Customers_detail As
Select CustomerID, City, Phone from Customers
/*Now, We Check The result*/
select * from Customers_detail

/* ALtering a View */
Alter View Customers_detail As
Select Customers.CustomerID, City, Phone from Customers
join Orders ON Customers.CustomerID = Orders.CustomerID
/*Now, We Check The result*/
select * from Customers_detail

/* Dropping a View */
Drop View Customers_detail
/*Now, We Check The result*/
select * from Customers_detail

/* Simple View */

/* A simple view is a view that is defined by a single SELECT statement  
Example:
Create View Customers_detail As
Select CustomerID, City, Phone from Customers

Now , ComplexView:
A complex view, on the other hand, is a view that is defined by a query that includes subqueries,
grouping, or aggregation. Here's an example of a complex view:

Example:
Create View Customers_detail As
Select count(Orders.CustomerID) as Number_Of_Order,Customers.CustomerID, City, Phone from Customers
join Orders ON Customers.CustomerID = Orders.CustomerID
Group By Customers.CustomerID,City, Phone
*/

                                     /* Task # 5 Part # 3*/
/*An index in SQL is like an index in a book, which helps you quickly find the information you're looking for.
It does this by creating a separate data structure that contains a copy of the data in the 
indexed columns,organized in a way that makes it easier and faster to search. 
This improves query performance by reducing the time it takes to retrieve data from a table.
However, creating indexes can also increase disk space usage and require additional maintenance overhead,
and may affect insert and update performance.*/

/* Clustered Index */
/* we Check Table Have clustered Index Or Not */
sp_helpindex 'Customers'
select * from Customers
Create clustered index idx_CustomerS_City ON Customers(City desc)
/*Now It Shown Error Because Cannot create more than one clustered index on table 'Customers'.*/
/*So Now we try another Table */
select * from Orders
sp_helpindex 'Orders'
 create clustered index idx_Orders on Orders (OrderDate desc,OrderID asc);
 /* So It Is also Same error So I use northwind Databse and Ithink All Atble Have at Least One Clusterd Index*/

 /* NonClustered Index*/
 sp_helpindex 'Products' //this query check_indexes
 select * from Products
 create NONCLUSTERED index non_idx on Products(UnitPrice desc)
SELECT *
FROM Products
WHERE UnitPrice > 50;

create NONCLUSTERED index non_idx2 on Products(ProductName desc)
SELECT *
FROM Products
WHERE UnitPrice > 50
order by ProductName

/* Create , Alter and Drop Indexes */
drop  index non_idx2 on Products
drop  index non_idx on Products

sp_helpindex 'Products' //this query check_indexes
create index idx_product on Products(ProductName)
select * from Products
order by ProductName desc

EXEC sp_rename 'Products.idx_product', 'idx_product1', 'INDEX';

drop index idx_product1 ON Products /* Now We Have Done Create Alter And drop Index */

