create database TaskDE;
use TaskDE

-- Creating table product
CREATE TABLE product (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    category VARCHAR(50) DEFAULT 'Uncategorized',
    description VARCHAR(255) DEFAULT NULL,
    created TIMESTAMP DEFAULT C_TIMESTAMP,
    CONSTRAINT price_positive CHECK (price >= 0)
);

-- Table Order
CREATE TABLE order (
    id INT PRIMARY KEY,
    customerid INT NOT NULL,
    orderdate DATE NOT NULL,
    total DECIMAL(15,3) NOT NULL,
    CONSTRAINT fk_customerid FOREIGN KEY (customerid) REFERENCES customer(id)
);

-- Table Customer
CREATE TABLE customer (
    id INT PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    email VARCHAR(20) UNIQUE NOT NULL,
    mobile VARCHAR(15) DEFAULT NULL,
    address VARCHAR(250) DEFAULT NULL,
    CONSTRAINT mobile_format CHECK (mobile LIKE '+%')
);

-- Altering the table Customer
alter table customer
drop column address;

-- Removing table order
drop table order;