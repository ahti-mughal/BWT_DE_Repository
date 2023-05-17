use Dummydata;

CREATE TABLE student  (
	student_id INT PRIMARY KEY IDENTITY, --make student_id an identity
	name VARCHAR(20) NOT NULL,  
	major_sub VARCHAR(20) UNIQUE 
);

SELECT * FROM student;

--use DML command (IDENTITY_INSERT)

SET IDENTITY_INSERT student ON;

--SQL query to insert multiple rows into a table using a single INSERT statement

INSERT INTO student (student_id, name, major_sub) VALUES(1, 'Junaid', 'Data Eng'), 
						(2, 'Asad', 'Front end'), (8, 'Junaid', 'Web Designer'),
						(3, 'Adeel', 'Flutter');

SET IDENTITY_INSERT student OFF;

INSERT INTO student VALUES(4, 'Tahir', NULL);
INSERT INTO student VALUES(5, 'Ali', 'Data scientist');




ALTER TABLE student ADD gpa DEC(3,2) DEFAULT '0.00'; 

INSERT INTO student(student_id, name, major_sub) VALUES(6, 'Tahir', 'Graphic Designer');

ALTER TABLE student ADD Marks INT CHECK(Marks>10);   

INSERT INTO student VALUES(7, 'Umair', 'UI/UX', 3.4, 35);

--SQL query to delete all the rows from a table that have a certain value in a column

DELETE FROM student
WHERE name = 'Tahir';

--SQL query to delete all the rows from a table that have a certain value in a column, and that meet a certain condition in another column

--using DML command (delete)

DELETE FROM student 
WHERE name = 'Junaid' 
AND major_sub = 'Web Designer';

--using DML command (update)

UPDATE student
SET name = 'Hamdan'
WHERE major_sub = 'Graphic Designer';

UPDATE student
SET name = 'Khizar'
WHERE major_sub = 'NULL' OR student_id = 4;

--SQL query to update multiple columns in a table based on a condition using the UPDATE statement

UPDATE student
SET gpa = 3.5, Marks = 38
WHERE name = 'Junaid';

--using command 'truncate', it's a DDL command

/*Difference between 'DELETE' & 'TRUNCATE' command is that DELETE removes specific rows from a table, 
while TRUNCATE removes all rows from a table, resetting the table to its initial state*/

TRUNCATE TABLE student;

--Create a table (NAMES) from another table

	SELECT name 
	INTO NAMES
	FROM student;

SELECT * FROM NAMES;

--Inserting rows from one table to another by using DML command

CREATE TABLE subject(
	sub VARCHAR(20)
);

INSERT INTO subject(sub)
SELECT major_sub
FROM student;

SELECT * FROM subject;

DROP TABLE student;