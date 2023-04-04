/*Retrieve the product name, unit price, and units in stock of all products that cost less than $20, ordered by product name.*/

SELECT ProductName, UnitPrice, UnitsInStock FROM Products WHERE UnitPrice < 20 ORDER BY ProductName;


/* Retrieve the order ID, customer ID, and order date of all orders that do not have a customer ID, ordered by order date.*/
select orderid, customerid, orderdate from orders where customerid is null order by orderdate;

/*Retrieve the category names of all products, as well as the countries to which orders have been shipped, without any duplicates.*/
SELECT DISTINCT CategoryName, ShipCountry 
FROM Products 
JOIN OrderDetails ON Products.ProductID = OrderDetails.ProductID 
JOIN Orders ON OrderDetails.OrderID = Orders.OrderID 
GROUP BY CategoryName, ShipCountry;
