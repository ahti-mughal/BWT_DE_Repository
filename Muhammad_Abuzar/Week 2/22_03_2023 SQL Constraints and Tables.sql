CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR(255),
    author VARCHAR(255),
    published_year INT
);
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255)
);

ALTER TABLE books
ADD CONSTRAINT unique_title
UNIQUE (title);


CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    CONSTRAINT fk_customer
    FOREIGN KEY (customer_id)
    REFERENCES customers(customer_id)
);


ALTER TABLE orders
ADD CONSTRAINT check_date
CHECK (order_date > '2022-01-01');


CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255)
);
ALTER TABLE customers
ALTER COLUMN email SET DEFAULT 'N/A';


CREATE TABLE sales (
    sale_id INT,
    product_id INT,
    sale_date DATE,
    PRIMARY KEY (sale_id, product_id)
);


ALTER TABLE sales
ADD CONSTRAINT check_product
CHECK (product_id IN (SELECT product_id FROM products));



