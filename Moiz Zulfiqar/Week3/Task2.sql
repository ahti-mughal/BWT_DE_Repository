USE northwind;

/*
1. To retrieve the product name, unit price, and units in stock of all products that cost less than $20, 
ordered by product name, you can use the following SQL query:
*/

-- SELECT ProductName, UnitPrice, UnitsInStock -- selects the columns to be displayed in the result set: ProductName, UnitPrice, and UnitsInStock.
-- FROM products -- specifies the table from which the data will be selected: products.
-- WHERE UnitPrice < 20 -- filters the data based on the specified condition: UnitPrice < 20.
-- ORDER BY ProductName; -- sorts the data in ascending order by the specified column: ProductName.

/*
2. To retrieve the order ID, customer ID, 
and order date of all orders that do not have a customer ID, ordered by order date, you can use the following SQL query:
*/

-- SELECT OrderID, CustomerID, OrderDate -- selects the columns to be displayed in the result set: OrderID, CustomerID, and OrderDate.
-- FROM orders -- specifies the table from which the data will be selected: orders.
-- WHERE CustomerID IS NULL -- filters the data based on the specified condition: CustomerID IS NULL (orders without a customer ID).
-- ORDER BY OrderDate; -- sorts the data in ascending order by the specified column: OrderDate.

/*
3. Retrieve the category names of all products, as well as the countries to which orders have been shipped, without any duplicates.
*/

SELECT DISTINCT CategoryName, ShipCountry -- selects the distinct combinations of CategoryName and ShipCountry.
FROM products -- specifies the tables to be joined: products, categories, order_details, and orders.
JOIN categories ON products.CategoryID = categories.CategoryID 
JOIN order_details ON products.ProductID = order_details.ProductID 
JOIN orders ON order_details.OrderID = orders.OrderID;
-- specifies the join conditions between the tables: products.CategoryID = categories.CategoryID, 
-- products.ProductID = order_details.ProductID, and order_details.OrderID = orders.OrderID.

