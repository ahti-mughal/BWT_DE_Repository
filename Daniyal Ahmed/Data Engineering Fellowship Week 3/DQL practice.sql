CREATE TABLE Persons3 (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);

SELECT LastName
FROM Persons3
WHERE PersonID = '3';

SELECT * FROM Persons3
ORDER BY PersonID;

SELECT DISTINCT Country FROM Customers;
SELECT ISNULL(NULL, 500);
SELECT	City AS CityID, CustomerName AS Customer
FROM Customers;
SELECT * FROM  Customers
WHERE City BETWEEN 'Lahore' AND 'Pindi';

SELECT * FROM Customers 
WHERE City IN ('Lahore', 'Pindi');
SELECT * FROM customers 
WHERE City LIKE 'London';

SELECT * FROM Customers
WHERE City IS NULL;
SELECT TOP 5 City, CustomerName
FROM  Customers;

SELECT CustomerName, city FROM customers 
UNION 
SELECT CustomerName, city FROM Orders;

SELECT student_id FROM students 
EXCEPT 
SELECT student_id FROM enrolled WHERE course_id = 'CS101';

SELECT employee_id FROM employees 
INTERSECT 
SELECT employee_id FROM managers;

