
                              --Week 03 Task 02--
							  --Using Northwind Database--
use northwind;

--Retrieve the product name, unit price, and units in stock of all products that cost less than $20, ordered by product name.--
SELECT * FROM PRODUCTS;                                                 /* checking products Table */
SELECT ProductName, UnitPrice, UnitsInStock from products where UnitPrice < $20 order by ProductName;


--Retrieve the order ID, customer ID, and order date of all orders that do not have a customer ID, ordered by order date.--
SELECT * FROM ORDERS;                                                 /* checking Orders Table */
select OrderID, CustomerID, OrderDate from Orders where CustomerID is null order by OrderDate;


--Retrieve the category names of all products, as well as the countries to which orders have been shipped, without any duplicates.--
SELECT * FROM CATEGORIES;                                                 /* checking Categories Table */
SELECT DISTINCT CategoryName FROM Categories;