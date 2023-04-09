CREATE DATABASE walmart
USE walmart
CREATE TABLE  items( item_id int primary key, item_name varchar(255), item_amount varchar(255), store_no int);
INSERT INTO items (item_id, item_name, item_amount,store_no) VALUES (21, 'Waffles', '5 boxes' , 37);
INSERT INTO items (item_id, item_name, item_amount,store_no) VALUES (23, 'Apple Juice', '8 bottles' , 312), (25, 'Apples', '2 kg', 312);
SELECT * FROM items

ALTER TABLE items ADD mfg_date date;
SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'items'
EXEC Sp_columns items; --check columns info
EXEC sp_helpconstraint items;
drop table items;





