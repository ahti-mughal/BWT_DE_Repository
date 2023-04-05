use TaskDE

CREATE TABLE product (
 
    id INT PRIMARY KEY NOT NULL, 
    name VARCHAR(30) NOT NULL,
    price DECIMAL(13,3) NOT NULL,
    category VARCHAR(40),
    description VARCHAR(250) 

);

Insert into product(id,name,price,category,description) values 
(1,'bat',1400.0,'sport','In Stock 400'),
(2,'ball',150.00,'sport','In Stock 1000'),
(3,'shart',850.00,'cloth','In Stock 300'),
(4,'cap',500.00,'cloth','In Stock 1500'),
(5,'chpal',800.00,'sport','In Stock 300'),
(6,'snaker',7000.00,'fashion','In Stock 100')

-- Creating a table
select * into product_backup from product;

-- Inserting rows
 insert into product_backup(id,name,price,category,description)
select id,name,price,category,description from product;


-- UPDATE 
update product
set name = 'bottle', price = 450.00
where id = 1
 
-- DELETE 
delete from product where name = 'cap';

-- TRUNCATE 
truncate table product_backup;