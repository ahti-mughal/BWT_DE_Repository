CREATE DATABASE thirdDb

USE thirdDb

CREATE TABLE Employee (
    Employee_ID int,
    FirstName varchar(255),
	LastName varchar(255),
    Salary int
)

SELECT * FROM Employee

/*  SQL INSERT statement
SQL provides the INSERT statement that allows you to insert one or more rows into a table. 
*/

--Insert one row into a table

INSERT INTO Employee(
       Employee_ID,
	   FirstName,
	   LastName,
	   Salary
)
VALUES
      ( 100,
	    'Qasim', 
		'Khan',
		100000
		)

INSERT INTO Employee(
       Employee_ID,
	   FirstName,
	   LastName,
	   Salary
)
VALUES
      ( 101,
	    'Shahzaib', 
		'Khan',
		80000
		)

INSERT INTO Employee(
       Employee_ID,
	   FirstName,
	   LastName,
	   Salary
)
VALUES
      ( 102,
	    'Mairaj', 
		'Qamar',
		900000
		)

INSERT INTO Employee(
       Employee_ID,
	   FirstName,
	   LastName,
	   Salary
)
VALUES
      ( 103,
	    'Abdul', 
		'Wahab',
		130000
		)

Go


/* Create Table Using Another Table
A copy of an existing table can also be created using CREATE TABLE.

The new table gets the same column definitions. All columns or specific columns can be selected.
*/

SELECT *
-- or you want to be specific coloumns then use this syntex SELECT col1,col2,col3 
INTO EmployeeBackup 
FROM Employee

SELECT * FROM EmployeeBackup

/* Copy rows from other tables
You can use the INSERT statement to query data from one or more tables and insert it into another table*/

INSERT INTO EmployeeBackup
SELECT
	*
FROM
	Employee
WHERE
	Employee_ID = 103


/* The SQL UPDATE Statement
The UPDATE statement is used to modify the existing records in a table.

UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition

Note: Be careful when updating records in a table! Notice the WHERE clause in the UPDATE statement. The WHERE clause specifies which record(s) that should be updated. If you omit the WHERE clause, all records in the table will be updated!
*/

UPDATE Employee
SET FirstName = 'Sheikh' , Salary =  50000
WHERE Employee_ID = 103

SELECT * FROM Employee


/* The SQL DELETE Statement
The DELETE statement is used to delete existing records in a table. 

DELETE Syntax
DELETE FROM table_name WHERE condition

Be careful when deleting records in a table! Notice the WHERE clause in the DELETE statement. The WHERE clause specifies which record(s) should be deleted. If you omit the WHERE clause, all records in the table will be deleted!
*/

DELETE FROM Employee WHERE Employee_ID = 103


/* Difference between DELETE and TRUNACATE 

DELETE is a DML(Data Manipulation Language) command and is used when we specify the row(tuple) that we want to remove or delete from the table or relation. The DELETE command can contain a WHERE clause. If the WHERE clause is used with the DELETE command then it removes or deletes only those rows(tuple) that satisfy the condition otherwise by default it removes all the tuples(rows) from the table.  Remember that DELETE logs the row deletions.

Syntax: DELETE command 

DELETE FROM TableName 
WHERE condition; 
TRUNCATE is a DDL(Data Definition Language) command and is used to delete all the rows or tuples from a table. Unlike the DELETE command, the TRUNCATE command does not contain a WHERE clause. In the TRUNCATE command, the transaction log for each deleted data page is not recorded. Unlike the DELETE command, the TRUNCATE command is fast. We cannot roll back the data after using the TRUNCATE command. 

Syntax: TRUNCATE command

*/