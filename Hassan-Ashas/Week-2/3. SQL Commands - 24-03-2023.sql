CREATE TABLE Employees (
    ID int IDENTITY(1,1) PRIMARY KEY,
    FirstName varchar(50),
    LastName varchar(50),
    Department varchar(50),
    Salary int
);

INSERT INTO Employees (FirstName, LastName, Department, Salary) 
VALUES ('Hassan', 'Ashas', 'Sales', 50000), ('Second', 'Name', 'Marketing', 2000);

SELECT * INTO NewEmployees FROM Employees;

INSERT INTO Employees (FirstName, LastName, Department, Salary)
SELECT FirstName, LastName, Department, Salary FROM NewEmployees;

UPDATE Employees 
SET Salary = 55000 
WHERE ID = 1;

TRUNCATE TABLE Employees;


-- Delete all rows from Employees table where Department = 'Marketing'
DELETE FROM Employees 
WHERE Department = 'Marketing';

-- Delete all rows from Employees table where Department = 'Marketing' and Salary > 60000
DELETE FROM Employees 
WHERE Department = 'Marketing' AND Salary > 60000;

UPDATE Employees 
SET Salary = 60000, Department = 'Marketing' 
WHERE ID = 1;