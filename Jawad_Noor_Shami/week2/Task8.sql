--creating table

create table employe2(
ID int PRIMARY KEY,
name varchar(30) ,
position varchar(20) ,
grade varchar(20)
);
SELECT * FROM employe2;


--Write an SQL query to insert multiple rows into a table using a single INSERT statement.

INSERT INTO  employe2
VALUES (1,'Jawad Norr','owner','A'),
(2,'Arslan','chef','B'),
(3,'Ahmed','Waiter','C'),
(4,'Haseeb','Manager','B'),
(5,'Rehan','chef','B'),
(6,'Talha','waiter','C');
SELECT * FROM employe2;


-- Write an SQL query to delete all the rows from a table that have a certain value in a column.

DELETE FROM employe2
WHERE position = 'chef';

SELECT * FROM  employe2;



-- delete all the rows from a table that have a certain value in a column, and that meet a certain condition in another column

DELETE FROM employe2
WHERE position = 'waiter'
AND grade = 'C';

SELECT * FROM employe2;

UPDATE employe2
SET position= 'Chef', Grade='C'
WHERE Name = 'Haseeb'
AND ID = 4;

SELECT * FROM employe2;


