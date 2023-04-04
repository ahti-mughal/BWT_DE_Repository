--1 - Write an SQL query to insert multiple rows into a table using a single INSERT statement.

create table task8
(
	id INT Primary key,
	FName varchar(100)
)
insert into task8 values ( 1,'Hasan'), (2,'Ali'), (3,'asad'),(4,'rehan');
Select * from task8;

insert into task8 values ( 5,'Hasan', 'ahmed')


--2 - Write an SQL query to delete all the rows from a table that have a certain value in a column.

alter table task8 
add LName varchar(100)

update task8
set LName = 'Muhammad'
where LName is null

--3 - Write an SQL query to delete all the rows from a table that have a certain value in a column, and that meet a certain condition in another column.

DELETE FROM task8
WHERE LName = 'ahmed' AND id < 10;

Select * from task8;

--4 - Write an SQL query to update multiple columns in a table based on a condition using the UPDATE statement.

UPDATE task8
set LName = 'Muhammad'
where LName = 'Ahmed' AND id = 1;
