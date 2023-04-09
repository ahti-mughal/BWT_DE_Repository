use sql_practice
-- TASK 7
CREATE TABLE products (
	-- identity 
    id INT PRIMARY KEY NOT NULL, 
    name VARCHAR(50) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    category VARCHAR(50),
    description VARCHAR(255) 

);

Insert into products(id,name,price,category,description) values 
(1,'Ketchup',25.0,'Dips','In Stock (1000 units)'),
(2,'Peanut Butter',600.00,'Breakfast','In Stock (450 units)'),
(3,'Frozen Pizza',450.00,'Frozen Foods','In Stock (100 units)'),
(4,'Water Bottle',50.00,'Refreshments','In Stock (3500 units)'),
(5,'Oreos',40.00,'Snacks','In Stock (4500 units)'),
(6,'Apple',150.00,'Fruits','In Stock (300 units in dozens)')

-- Creating a table(products_backup) from another table (products)
select * into products_backup from products;

-- Inserting rows from one table(products) to another (products_backup)
 insert into products_backup(id,name,price,category,description)
select id,name,price,category,description from products;


-- UPDATE 
update products
set name = 'Mayonaise', price = 45.00
where id = 1

/* Difference b/w Delete and Truncate

- DELETE is a DML (Data Manipulation Language) statement, while TRUNCATE is a DDL (Data Definition Language) statement.
- DELETE statement is used to delete specific rows from a table based on a specified condition, while TRUNCATE statement is used to remove all the rows from a table.
- DELETE requires a WHERE clause, while TRUNCATE performs its function w/o needing the clause
- Data removed via DELETE can be retrieved while with TRUNCATE its permanentely deleted

*/ 

-- DELETE 
delete from products where name = 'apple';

-- TRUNCATE 
truncate table products_backup;