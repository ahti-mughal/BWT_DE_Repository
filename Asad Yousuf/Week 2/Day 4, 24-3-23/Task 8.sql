--Task 8.1, insert multiple rows using single INSERT statement

CREATE TABLE employee_data2(
Employee_ID int PRIMARY KEY,
Name VARCHAR(30) ,
Designation VARCHAR(30) ,
Grade VARCHAR(30)
);
SELECT * FROM employee_data2;

--Inserting data
INSERT INTO employee_data2
VALUES (3514,'Sheharyar','A.M','G-10'),
(647,'Muhammad Zahid','A.M','G-10'),
(356,'Masood Hasan Khan','Foreman','G-11'),
(919,'Saifullah','Foreman','G-11'),
(2771,'Rohail Sabir','Electrician','G-13'),
(918,'Adnan Baig','Sr. Electrician','G-12');

SELECT * FROM employee_data2;

-- Task 8.2, delete all rows from table having certain value in column
DELETE FROM employee_data2
WHERE Designation = 'A.M';

SELECT * FROM employee_data2;

-- Task 8.3, delete all rows from table having certain value in column and meeting condition in another column

DELETE FROM employee_data2
WHERE Designation = 'Foreman'
AND Grade = 'G-11';

SELECT * FROM employee_data2;

-- Task 8.4, Update multiple columns based on a condition 

UPDATE employee_data2
SET Designation = 'Sr. Electrician', Grade='G-12'
WHERE Name = 'Rohail Sabir'
AND Employee_ID = 2771;

SELECT * FROM employee_data2;



