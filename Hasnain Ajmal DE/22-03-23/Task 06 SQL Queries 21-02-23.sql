CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY,
    customer_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    age INTEGER
);

ALTER TABLE customers ADD COLUMN phone_number VARCHAR(20);

DROP TABLE customers;

--Not Null Constraint
ALTER TABLE customers
ALTER COLUMN customer_name VARCHAR(50) NOT NULL;

--Unique Constraint
ALTER TABLE customers
ADD CONSTRAINT unique_email
UNIQUE (email);

--Default Constraint
ALTER TABLE customers
ADD CONSTRAINT default_age
DEFAULT 30 FOR age;

--Check Constraint
ALTER TABLE customers
ADD CONSTRAINT check_age
CHECK (age >= 18 AND age <= 100);

--Primary Key Constraint
ALTER TABLE customers
ADD CONSTRAINT pk_customer_id
PRIMARY KEY (customer_id);

--Foreign Key Constraint
ALTER TABLE orders ADD CONSTRAINT fk_customer_id FOREIGN KEY (customer_id) REFERENCES customers (customer_id);

