-- Creating Customers Table
CREATE TABLE customers
(
    customer_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50)
);

-- Creating Order Table
CREATE TABLE orders
(
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Inserting Values in Customers
INSERT INTO customers (customer_id, name, email) VALUES (1, 'John Smith', 'john@example.com');
INSERT INTO customers (customer_id, name, email) VALUES (2, 'Jane Doe', 'jane@example.com');
-- Inserting Values in Orders
-- The Coloumn Refernced by FK must have same value as PK or it must be null
INSERT INTO orders (order_id, customer_id, order_date) VALUES (1, 1, '2022-03-25');
INSERT INTO orders (order_id, order_date) VALUES (2, '2022-03-26');

-- Retrieving Data
SELECT * FROM customers;
SELECT * FROM orders;
