--Making Table employee_data

CREATE TABLE employee_data1(
Employee_ID int PRIMARY KEY IDENTITY (1,1),
Name VARCHAR(30) ,
Designation VARCHAR(30) ,
Grade VARCHAR(30)
);

SELECT * FROM employee_data1;

--Task 7.1 , Insert Identity Column

--Inserting data
INSERT INTO employee_data1
VALUES ('Sheharyar','A.M','G-10'),
('Muhammad Zahid','A.M','G-10'),
('Masood Hasan Khan','Foreman','G-11'),
('Saifullah','Foreman','G-11'),
('Rohail Sabir','Electrician','G-13');

SELECT * FROM employee_data1;

-- Task 7.2, Update Table
UPDATE employee_data1
SET Name = 'Sheharyar Khan'
WHERE Employee_ID = 1;

SELECT * FROM employee_data1;

-- Task 7.3, making Table from another table

SELECT * INTO employee_foreman
FROM employee_data1
WHERE Designation = 'Foreman';

SELECT * FROM employee_foreman;

-- Task 7.4, 'Truncate table' deletes the data from the table 
TRUNCATE TABLE employee_foreman;
SELECT * FROM employee_foreman;

-- Task 7.4, 'Drop table' deletes the complete table
DROP TABLE employee_data1;



