
--Create a STUDENT Table and making ROLLNUM an identity

CREATE TABLE STUDENT(ROLLNUM INT PRIMARY KEY IDENTITY,
STUD_NAME VARCHAR(25) NOT NULL,
COURSE VARCHAR(25) UNIQUE);

SELECT * FROM STUDENT;

--Create a table NAMES from another table STUDENT

	SELECT STUD_NAME 
	INTO NAMES
	FROM STUDENT;

SELECT * FROM NAMES;

--Inserting rows from one table to another 

CREATE TABLE MAJOR_COURSE(
	course1 VARCHAR(20));

INSERT INTO MAJOR_COURSE(course1)
SELECT COURSE
FROM STUDENT;

SELECT * FROM MAJOR_COURSE;

/*Difference between 'DELETE' & 'TRUNCATE' command is that DELETE removes specific rows from a table, 
on the other hand TRUNCATE removes all rows from a table, resetting the table to its initial state*/

SET IDENTITY_INSERT STUDENT ON;
INSERT INTO STUDENT VALUES(001, 'Aabra Malik', 'Computer Arts'),
(002, 'Fatima Shah', 'Computer Science');


TRUNCATE TABLE STUDENT;

