-- create the database with name secondDb
CREATE DATABASE secondDb

--change the database connection
USE secondDb

Go

--create the Table with the name Persons
CREATE TABLE persons (
     PersonId int,
	 FirstName varchar(255),
	 LastName varchar(255),
	 City varchar(255)
)

/* The SQL SELECT Statement
The SELECT statement is used to select data from a database.

The data returned is stored in a result table, called the result-set
*/
SELECT * FROM persons

/*SQL ALTER TABLE Statement
The ALTER TABLE statement is used to add, delete, or modify columns in an existing table.

The ALTER TABLE statement is also used to add and drop various constraints on an existing table.
*/

--ALTER TABLE - ADD Column
ALTER TABLE persons
ADD Salary int

--ALTER TABLE - DROP COLUMN
ALTER TABLE persons
DROP COLUMN Salary


/*The SQL DROP TABLE Statement
The DROP TABLE statement is used to drop an existing table in a database.
*/

DROP TABLE persons
