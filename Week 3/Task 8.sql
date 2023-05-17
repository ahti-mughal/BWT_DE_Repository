                                   /*Task 7*/
/*Table Creation*/
CREATE TABLE Student  (
   id INT IDENTITY ,
    std_Name VARCHAR(50) NOT NULL , 
    CNIC_NO VARCHAR(100) UNIQUE,
	age INT CHECK (age >= 18)
);

CREATE TABLE Tutor (
    Name VARCHAR(50) NOT NULL , 
    CNIC_NO VARCHAR(100) UNIQUE,
	age INT 	
);
/*Identity on Insert Command*/
SET IDENTITY_INSERT Student ON 

/*Table Creation from another Table*/
SELECT * INTO Employe FROM Tutor;

/*Inserting Rows from 1 Table to Another*/
INSERT INTO Tutor (Name, CNIC_NO, age)
SELECT Name, CNIC_NO, age FROM Tutor;

/*UPDATE command*/
UPDATE Student SET age=19  WHERE id>2;

/*Diffrence between TRUNCATE & DELETE command*/

/*TRUNCATE command*/
/*The SQL TRUNCATE TABLE command is used to delete complete data from an existing table.*/

/*Delete command */
/* DROP TABLE command to delete complete table but it would remove complete table structure 
form the database and you would need to re-create this table once again if you wish you store some data.*/
TRUNCATE TABLE Employe;

                                  /*--------------------------------------*/

                                  /*Task 8*/
/*  1 - Write an SQL query to insert multiple rows into a table using a single INSERT statement.*/
INSERT INTO Student  VALUES 
(2, 'Amna','37596895',19),
(3,'Arman','37596877',18),
(4, 'iza','37596888',23);

/*2 - Write an SQL query to delete all the rows from a table that have a certain value in a column.*/
DELETE from Student;

/*3 - Write an SQL query to delete all the rows from a table that have a certain value in a column, and that meet a certain condition in another column.*/
DELETE FROM Student WHERE age>25;

/*4 - Write an SQL query to update multiple columns in a table based on a condition using the UPDATE statement.*/
UPDATE Student SET age=19 ,std_Name = 'aysha' WHERE id>2;
