/*ALTER TABLE Customers 
ALTER COLUMN ContactName varchar(50) NOT NULL;  */


--ALTER TABLE Customers 
--ADD CONSTRAINT uc_Customers_Email UNIQUE (Email);

/*ALTER TABLE Customers 
ADD CONSTRAINT DF_Customers_Country DEFAULT 'USA' FOR Country;  */

--ALTER TABLE "Order Details" 
--ADD CONSTRAINT chk_OrderDetails_Quantity CHECK (Quantity > 0);

--ALTER TABLE Employees 
--ADD CONSTRAINT pk_Employees PRIMARY KEY (EmployeeID);

--ALTER TABLE Orders 
--ADD CONSTRAINT fk_Orders_Employees FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID);

-- Create a new table called 'DummyEmployees' with four columns
/*CREATE TABLE DummyEmployees (
  EmployeeID int NOT NULL,
  FirstName varchar(50),
  LastName varchar(50),
  BirthDate date
); */

/*INSERT INTO DummyEmployees (EmployeeID, FirstName, LastName, BirthDate)
VALUES (1, 'John', 'Doe', '1990-01-01'),
       (2, 'Jane', 'Smith', '1995-02-15'),
       (3, 'Bob', 'Johnson', '1985-11-30');  */

-- Display the contents of the 'DummyEmployees' table
SELECT * FROM DummyEmployees;

-- Add a new column called 'Salary' to the 'DummyEmployees' table
ALTER TABLE DummyEmployees 
ADD Salary decimal(10,2);

-- Update the 'Salary' column for all DummyEmployees
UPDATE DummyEmployees 
SET Salary = 50000.00;

-- Display the contents of the 'DummyEmployees' table after adding the 'Salary' column
SELECT * FROM DummyEmployees;

-- Delete the 'Salary' column from the 'DummyEmployees' table
ALTER TABLE DummyEmployees 
DROP COLUMN Salary;

-- Display the contents of the 'DummyEmployees' table after deleting the 'Salary' column
SELECT * FROM DummyEmployees;

-- Delete the entire 'DummyEmployees' table
DROP TABLE DummyEmployees;





