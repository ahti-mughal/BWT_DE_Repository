-- Retrieve the product name, unit price, and units 
-- in stock of all products that cost less than $20, 
-- ordered by product name.

select * from products

select ProductName, UnitPrice, UnitsInStock 
from products
where UnitPrice>20
order by ProductName

-- Retrieve the order ID, customer ID, and 
-- order date of all orders that do not have 
-- a customer ID, ordered by order date.

select * from orders

select orderid as 'Order Date', customerid as 'Customer Id',
orderdate as 'Order Date' from orders 
where customerid is null
order by OrderDate

-- Retrieve the category names of all products,
-- as well as the countries to which orders have 
-- been shipped, without any duplicates.

select * from Categories
SELECT DISTINCT C.CategoryName, O.ShipCountry
FROM Categories AS C
JOIN 
Products AS P 
ON C.CategoryID = P.CategoryID
JOIN 
[Order Details] AS OD
ON P.ProductID =OD.ProductID
JOIN Orders AS O
ON OD.OrderID = O.OrderID 
