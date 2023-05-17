use Dummydata;
--create table
CREATE TABLE student  (
	student_id INT PRIMARY KEY, 
	name VARCHAR(20) NOT NULL,  
	Semester VARCHAR(20),
	GPA DECIMAL(3,2) CHECK(GPA>0.00),
	Status VARCHAR(7)
);

SELECT * FROM student;

INSERT INTO student(student_id, name, Semester, GPA, Status) 
		VALUES(1, 'Junaid', '2nd', 3.20, 'pass'),
			  (2, 'Asad', '1st', 2.1, 'pass'), 
			  (3, 'Adeel', '2nd', 1.3, 'fail'),
			  (4, 'Ali', '3rd', 2.3, 'pass'),
			  (5, 'Hamza', '6th', 1.2, 'fail'),
			  (6, 'Adeel', '4th', 3.5, 'pass'),
			  (7, 'Ali', '5th', 2.30, 'pass'),
			  (8, 'Tahir', '6th', 2.73, 'pass'),
			  (9, 'Umair', null, 3.73, 'pass');

SELECT name, Status  --use DQL (SELECT)
FROM student;

SELECT name, Semester, GPA
FROM student
WHERE Status = 'fail';  --use DQL (WHERE clause)

SELECT name, Semester
FROM student
ORDER BY GPA ASC;  --use DQL (ORDER BY Clause)

SELECT DISTINCT Semester, Status  --use DQL(DISTINCT Keyword)
FROM student;

SELECT ISNULL(Semester, 'not-confirmed')   --use DQL (Isnull() function)
FROM student;

SELECT name AS 'Students_Name', Status AS 'PASS/FAIL'  --use DQL (Column aliases)
FROM student;

SELECT * FROM student  
WHERE GPA BETWEEN 2.3 AND 3.5;  --use predicate(Between ... And)

SELECT * FROM student  
WHERE student_id IN (4,5,6,2);	--use predicate(IN())

--use predicate(LIKE)

SELECT * FROM student  
WHERE name LIKE 'A%';	

SELECT * FROM student  
WHERE name LIKE '%d';

SELECT * FROM student  
WHERE name LIKE '_a%';

SELECT * FROM student  
WHERE name NOT LIKE 'A%';


SELECT TOP 3 * FROM student		--use TOP N CLAUSE
ORDER BY name DESC;

CREATE TABLE library(
	stu_id INT PRIMARY KEY, 
	name VARCHAR(20) NOT NULL,  
	Semester VARCHAR(20),
	GPA DECIMAL(3,2) CHECK(GPA>0.00),
	Status VARCHAR(7)
);

	INSERT INTO library(stu_id, name, Semester, GPA, Status) 
		VALUES(1, 'Junaid', '2nd', 3.20, 'pass'),
			  (2, 'Asjad', '1st', 1.1, 'fail'), 
			  (3, 'Hadi', '3rd', 2.3, 'pass'),
			  (4, 'Ali', '3rd', 2.3, 'pass'),
			  (5, 'Ahmed', '4th', 2.2, 'pass');

SELECT * FROM library

--use Set Operators (UNION)
SELECT * FROM student
UNION
SELECT * FROM library;

--use Set Operators (UNION ALL)
SELECT * FROM student
UNION ALL
SELECT * FROM library;

--use Set Operators (INTERSECT)
SELECT * FROM student
INTERSECT
SELECT * FROM library;

--use Set Operators (EXCEPT)
SELECT * FROM student
EXCEPT
SELECT * FROM library;


DROP TABLE library;

DROP TABLE student;






