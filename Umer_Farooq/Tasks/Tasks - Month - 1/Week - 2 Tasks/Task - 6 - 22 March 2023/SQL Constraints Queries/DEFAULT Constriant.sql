Drop Table if exists Customer;

CREATE TABLE Customer (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100) DEFAULT 'example@example.com'
);

INSERT INTO Customer(FirstName, LastName, Email)
Values('Asim', 'Farooq', 'asim@gmail.com');
INSERT INTO Customer(FirstName, LastName) Values('Umer','Farooq');

SELECT * FROM Customer;