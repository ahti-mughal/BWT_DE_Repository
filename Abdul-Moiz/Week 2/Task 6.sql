create database sql_practice;
use sql_practice

-- Creating table products (That has primary key, not null, default constraints)
CREATE TABLE products (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    category VARCHAR(50) DEFAULT 'Uncategorized',
    description VARCHAR(255) DEFAULT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT price_positive CHECK (price >= 0)
);

-- Table Orders, That uses a foreign key and refrencial constraints
CREATE TABLE orders (
    id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    total DECIMAL(10,2) NOT NULL,
    CONSTRAINT fk_customer_id FOREIGN KEY (customer_id) REFERENCES customers(id)
);

-- Table Customers, (that has unique constraint)
CREATE TABLE customers (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL,
    phone VARCHAR(20) DEFAULT NULL,
    address VARCHAR(255) DEFAULT NULL,
    CONSTRAINT phone_format CHECK (phone LIKE '+%')
);

-- Altering the table (Removing column called address)
alter table customers
drop column address;

-- Removing table called "orders"
drop table orders;