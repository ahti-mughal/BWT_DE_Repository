create database MyDmlTasks

use myDmlTasks

--Task7
create table Carr(
CarName varchar(50),
PltNO int Primary key not null,  -- i-Identity using Unique attribute in my table
color varchar(50)
)

Insert into Carr(CarName,PltNO,color) values('merce',7655, 'black'),('Honda', 3453,'White'),('Audi',3456,'Grey')

select * from Carr

--ii-Creating a table from another table
select * into MyCarCopy from Carr;

--iii-Inserting rows from one table to anothe
INSERT INTO MyCarCopy (CarName, PltNO)
SELECT CarName,PltNO  FROM Carr;

select * from MyCarCopy

--2-UPDATE

UPDATE Carr
SET CarName = 'Ferari'
WHERE PltNO = 3453;

select * from Carr

/*3-- DELETE:
     • Truncate
     • Difference between delete & truncate
	                                            Difference
	 DELETE is a DML (Data Manipulation Language) command used to remove one or more rows from a table based on a condition. 
	 When you use the DELETE command, you can specify a WHERE clause to indicate which rows to delete
	 .This command deletes data row by row and can be rolled back (using transactions) if necessary.

	 TRUNCATE is a DDL (Data Definition Language) command used to remove all rows from a table. 
	 It essentially empties the table of its data and resets any auto-incrementing columns to their starting values. 
	 TRUNCATE does not use a WHERE clause, as it removes all rows from the table. TRUNCATE also cannot be rolled back once it is executed.*/

DELETE FROM Carr
WHERE PltNO = 3453;

select * from Carr

TRUNCATE TABLE Carr;

--Task8

-- 1 - Write an SQL query to insert multiple rows into a table using a single INSERT statement.


Insert into Carr(CarName,PltNO,color) values('merce',7655, 'black'),('Honda', 3453,'White'),('Audi',3456,'Grey'),('Bhugati',2312,'RED')

--2 - Write an SQL query to delete all the rows from a table that have a certain value in a column.

DELETE from MyCarCopy where CarName='Audi'


select * from MyCarCopy

--3 - Write an SQL query to delete all the rows from a table that have a certain value in a column,and that meet a certain condition in another column.

DELETE FROM MyCarCopy
WHERE CarName = 'Honda' AND PltNO = 3453

--4 - Write an SQL query to update multiple columns in a table based on a condition using the UPDATE statement.

UPDATE Carr
SET CarName = 'Ferari' ,color ='Green'
WHERE PltNO = 3453;