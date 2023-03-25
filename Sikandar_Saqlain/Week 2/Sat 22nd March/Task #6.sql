

--Different types of constraints
CREATE TABLE department(
	id int PRIMARY KEY,
	name varchar(50) NOT NULL,
	
);


CREATE TABLE branch(
	id int PRIMARY KEY,
	city varchar(20) NOT NULL,
	branch_code char(4) NOT NULL

)


CREATE TABLE employee(
	id int PRIMARY KEY,
	first_name varchar(50) NOT NULL,
	last_name varchar(50) NOT NULL,
	email varchar(20) UNIQUE NOT NULL,
	age int CHECK(age >= 18),
	phone_number varchar(11) DEFAULT('03000000000'),
	dept_id int NOT NULL,
	FOREIGN KEY (dept_id) REFERENCES department(id)
);


--Create an index on one or more columns in a table for faster querying
CREATE INDEX emp_idx
ON employee(id);


--Alter a table
ALTER TABLE employee
ADD location int NOT NULL,
	FOREIGN KEY (location) REFERENCES branch(id);


--Delete a table
DROP TABLE employee;