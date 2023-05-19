--TASK 8

-- Write an SQL query to insert multiple rows into a table using a single INSERT statement. 
insert into products (id,name,price,category,description) values (7,'Peach',200.00,'Fruits','In Stock (250 units in dozens)'), (8,'Mango',350.00,'Fruits','In Stock (100 units in dozens)')

-- Write an SQL query to delete all the rows from a table that have a certain value in a column.
delete from products where category = 'Fruits'

-- Write an SQL query to delete all the rows from a table that have a certain value in a column, and that meet a certain condition in another column.
delete from products where category = 'Frozen Foods' and description like 'In Stock%'

-- Write an SQL query to update multiple columns in a table based on a condition using the UPDATE statement.
update products
set name = 'Mayonaise', price = 45.00
where id = 1

