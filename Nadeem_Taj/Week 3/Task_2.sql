-- Using Northwind database
use Northwind

--1 Retrieve the product name, unit price, and units in stock of all products that cost less than $20, ordered by product name.
select ProductName, UnitPrice, UnitsinStock
from products
where UnitPrice<20
order by ProductName


-- 2. Retrieve the order ID, customer ID, and order date of all orders that do not have a customer ID, ordered by order date.
Select OrderID, CustomerID, OrderDate
from Orders
where CustomerID is null
order by OrderDate

----Retrieve the category names of all products, as well as the countries to which orders have been shipped, without any duplicates:
SELECT DISTINCT Categories.CategoryName, ShipCountry
FROM Products
INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID
INNER JOIN "Order Details" ON Products.ProductID = [Order Details].ProductID
INNER JOIN Orders ON [Order Details].OrderID = Orders.OrderID;
 

