-- Write an SQL query to insert multiple rows into a table using a single INSERT statement.
<<<<<<< HEAD
INSERT INTO db_employee
VALUES 
('Fahad','Arshad','Mardan','Pakistan','Fellow'),
('Muhammad','Ahtisham','Islamabad','Pakistan','Lead'),
('Usman','Khan','Islamabad','Pakistan','Founder'),
('Hamza','Khan','Peshawar','Pakistan','Fellow'), 
('Tariq','Ali','Mardan','Pakistan','Fellow');

-- Write an SQL query to delete all the rows from a table that have a certain value in a column.
DELETE FROM db_employee 
WHERE CITY = 'Mardan';

-- Write an SQL query to delete all the rows from a table that have a certain value in a column, and that meet a certain condition in another column.
DELETE FROM db_employee 
WHERE CITY = 'Mardan' AND ROLE = 'Fellow';

-- Write an SQL query to update multiple columns in a table based on a condition using the UPDATE statement.
UPDATE db_employee
SET City = 'Lahore'
WHERE EmployeeID = 4;

=======
INSERT INTO db_employee
VALUES 
('Fahad','Arshad','Mardan','Pakistan','Fellow'),
('Muhammad','Ahtisham','Islamabad','Pakistan','Lead'),
('Usman','Khan','Islamabad','Pakistan','Founder'),
('Hamza','Khan','Peshawar','Pakistan','Fellow'), 
('Tariq','Ali','Mardan','Pakistan','Fellow');

-- Write an SQL query to delete all the rows from a table that have a certain value in a column.
DELETE FROM db_employee 
WHERE CITY = 'Mardan';

-- Write an SQL query to delete all the rows from a table that have a certain value in a column, and that meet a certain condition in another column.
DELETE FROM db_employee 
WHERE CITY = 'Mardan' AND ROLE = 'Fellow';

-- Write an SQL query to update multiple columns in a table based on a condition using the UPDATE statement.
UPDATE db_employee
SET City = 'Lahore'
WHERE EmployeeID = 4;

>>>>>>> 49d7ad174ac698221d6820b90a6b15110095bc4e
SELECT * FROM DB_EMPLOYEE