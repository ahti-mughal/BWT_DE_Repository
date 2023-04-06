
--create table
CREATE TABLE student  (
	student_id INT PRIMARY KEY, --use constraint (primary kay)
	name VARCHAR(20) NOT NULL,  --use constraint (not null)
	major_sub VARCHAR(20) UNIQUE --use constraint (unique key)
);

SELECT * FROM student;

INSERT INTO student VALUES(1, 'Fatima', 'Data Eng'),
						(2, 'Aabra', 'Data Eng'), 
						(3, 'Tehreem', 'Data Eng'),
						(4, 'Maham', NULL),
						(5, 'Ahmed', 'Data scientist');

--alter table
ALTER TABLE student ADD gpa DEC(3,2) DEFAULT '0.00'; --use constraint (default)

INSERT INTO student(student_id, name, major_sub) VALUES(6, 'Tahir', 'Graphic Designer');

ALTER TABLE student ADD Marks INT CHECK(Marks>10);   --use constraint (check)

INSERT INTO student VALUES(7, 'Ayesha', 'UI/UX', 3.4, 35);

CREATE TABLE semester (
	 semester_no INT PRIMARY KEY,
	student_id INT
	FOREIGN KEY (semester_no) REFERENCES student(student_id) --use constraint (foreign key)
	);
INSERT INTO semester VALUES(2,1),(1,2),(3,3),(4,4),(6,5),(5,6);


SELECT * FROM semester;

--delete table

DROP TABLE semester;

DROP TABLE student;