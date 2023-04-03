--TASK 7:
--INSERT:
CREATE DATABASE walmart
USE walmart
CREATE TABLE  items( item_id int primary key not null, item_name varchar(255), item_amount varchar(255), store_no int);
INSERT INTO items (item_id, item_name, item_amount,store_no) VALUES (21, 'Waffles', '5 boxes' , 37),(23, 'Apple Juice', '8 bottles' , 312), (25, 'Apples', '2 kg', 312);
INSERT INTO items (item_id, item_name, item_amount,store_no) VALUES (23, 'Apple Juice', '8 bottles' , 312), (25, 'Apples', '2 kg', 312);
SELECT * FROM items


--ii Creating a table from another table
SELECT * INTO itemscopy FROM items WHERE 1=0; --where 1=0 ensures that no data is copied from the original table into the new table.



SELECT * INTO myitems FROM items; --it copies the content aswell.
SELECT * FROM myitems; 

--iii-Inserting rows from one table to another
INSERT INTO itemscopy (item_id, item_name, item_amount,store_no) SELECT item_id, item_name, item_amount,store_no FROM items
SELECT * FROM itemscopy; 

--UPDATE:
UPDATE items SET item_name = 'Biscuit' WHERE item_id = 21;
SELECT * FROM items; 

--DELETE:
/*DIFFERENCE:
DELETE is a Data Manipulation Language (DML) operation that removes one or more rows 
from a table based on a given condition, 
while TRUNCATE is a Data Definition Language (DDL) operation that removes all rows from a table 
without logging individual row deletions.
DELETE can be rolled back if used within a transaction, 
whereas TRUNCATE cannot be rolled back.*/

DELETE FROM items WHERE item_id=21;
SELECT * FROM items; 

TRUNCATE TABLE items;
SELECT * FROM items; 


--TASK 8:
--1 - Write an SQL query to insert multiple rows into a table using a single INSERT statement.
INSERT INTO items (item_id, item_name, item_amount,store_no) VALUES (21, 'Waffles', '5 boxes' , 37),(19, 'Apple Juice', '8 bottles' , 312), (18, 'Apples', '2 kg', 312);
INSERT INTO items (item_id, item_name, item_amount,store_no) VALUES (22, 'Waffles', '5 boxes' , 37),(17, 'Apple Juice', '8 bottles' , 312), (16, 'Apples', '2 kg', 312);

--2 - Write an SQL query to delete all the rows from a table that have a certain value in a column.
DELETE FROM items WHERE item_name='Waffles';

--3 - Write an SQL query to delete all the rows from a table that have a certain value in a column, and that meet a certain condition in another column.
DELETE FROM items WHERE item_name = 'Apple Juice' AND item_id = 19;

--4 - Write an SQL query to update multiple columns in a table based on a condition using the UPDATE statement.
UPDATE items SET item_name = 'Toffee' ,store_no =423 WHERE item_id = 22;
SELECT * FROM items; 



