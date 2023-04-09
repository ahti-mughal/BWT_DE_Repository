select * from [production].[products];

-- Retrieve the product name, unit price, and units in stock of all
-- products that cost less than $20, ordered by product name.

select product_name, list_price, brand_id from [production].[products] where list_price < 200;


-- Retrieve the order ID, customer ID, and order date of
-- all orders that do not have a customer ID, ordered by order date.

SELECT * from sales.orders;

SELECT order_id, customer_id, order_date from sales.orders where customer_id is null ORDER by order_date;



-- Retrieve the category names of all products, as well as the countries
-- to which orders have been shipped, without any duplicates.

SELECT * from production.categories;

select distinct category_name from production.categories union select distinct first_name from sales.customers;
SELECT * from sales.customers;
