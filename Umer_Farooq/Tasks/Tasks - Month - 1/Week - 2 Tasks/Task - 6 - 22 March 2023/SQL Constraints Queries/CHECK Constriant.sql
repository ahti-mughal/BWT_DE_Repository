CREATE TABLE Employee
(
    EmployeeID INT PRIMARY KEY IDENTITY (1, 3),
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    Salary MONEY,
    CONSTRAINT CHK_EmployeeAge CHECK (Age >= 18 AND Age <= 65),
    CONSTRAINT CHK_EmployeeSalary CHECK (Salary >= 0)
);

INSERT INTO Employee(FirstName,LastName, Age, Salary)
Values('Umer', 'Farooq', 24, 10000);

SELECT * FROM Employee;