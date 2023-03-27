--CREATE TABLE schools(
	--school_id INT PRIMARY KEY,
	--school_name VARCHAR(100))



--CREATE TABLE students (

	--student_id INT PRIMARY KEY,
	--first_name CHAR(30) NOT NULL,
	--last_name CHAR(30) NOT NULL,
	--age INT CHECK (age BETWEEN 10 AND 15),
	--student_address VARCHAR(200) UNIQUE,
	--class INT DEFAULT 5,
	--school_id INT,
	--FOREIGN KEY(school_id) REFERENCES schools(school_id));

--ALTER table students DROP class;
--ALTER table students ADD email VARCHAR(30);

--DROP table schools;