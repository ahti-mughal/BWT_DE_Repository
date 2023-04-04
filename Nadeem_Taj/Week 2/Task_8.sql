use New_Nadeem420

--1  Created a Table */
CREATE TABLE Task8 (
    id INT NOT NULL PRIMARY KEY,
    first_name VARCHAR(50) ,
    last_name VARCHAR(50)  ,
    email VARCHAR(100) UNIQUE,
  
);

-- 1. Write an SQL query to insert multiple rows into a table using a single INSERT statement.


Insert into Task8(id, first_name, last_name, email) values (1,'AMAN','ALI','SSS'),(2,'AMAN','ALI','WWW'),(3,'AMAN','ALI','WWX'),(4,'AMAN','ALI','WWE')

select*from Task8

--2. Write an SQL query to delete all the rows from a table that have a certain value in a column.

DELETE FROM Task8
WHERE email = 'SSS'


select * from Task8

--3. Write an SQL query to delete all the rows from a table that have a certain value in a column,and that meet a certain condition in another column.

DELETE FROM Task8
WHERE email = 'WWW' AND id = 2

--4.  Write an SQL query to update multiple columns in a table based on a condition using the UPDATE statement.

UPDATE Task8
SET first_name='Usama', email='USAMA@GMAIL.COM'
WHERE email = 'WWX';

Select*from Task8