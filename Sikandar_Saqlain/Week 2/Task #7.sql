--Insert Identity
--To insert a value into an identity column, we must set the IDENTITY_INSERT property to ON
SET IDENTITY_INSERT department ON;
INSERT INTO department VALUES (1, 'Finance');
SET IDENTITY_INSERT department OFF; --After inserting the required values, we should set the property back to OFF to prevent unnecessary data inconsistencies 

--Create new table from existing table
SELECT * INTO employee_backup
FROM employee;

--Insert rows from one table into another
INSERT INTO employee_2
SELECT *		--Can also specify columns to copy
FROM employee;


--Update rows in a table
UPDATE employee
SET email = 'johndoe123@gmail.com'
WHERE first_name = 'John' AND last_name = 'Doe';


--Deleting from and truncating a table
DELETE FROM department 
WHERE name = 'Sales';

TRUNCATE TABLE employee;

--The difference between DELETE and TRUNCATE is that TRUNCATE removes all rows from a table without logging the deletions. It is similar to 
--a DELETE statement without a WHERE condition. A TRUNCATE statement cannot be rolled back. A TRUNCATE statement also does not fire any triggers
--that are meant to fire on row deletions.