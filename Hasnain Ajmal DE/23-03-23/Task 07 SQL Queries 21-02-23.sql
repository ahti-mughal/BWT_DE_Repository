-- Create a table with an identity column
CREATE TABLE Customers
(
    CustomerID INT IDENTITY(1,1) PRIMARY KEY,
    CustomerName VARCHAR(50),
    ContactName VARCHAR(50),
    Country VARCHAR(50)
)

--insert
INSERT INTO Customers (CustomerName, ContactName, Country)
VALUES ('Alfreds Futterkiste', 'Maria Anders', 'Germany')

--Creating a table from another table
SELECT *
INTO CustomersBackup
FROM Customers

--Inserting rows from one table to another
INSERT INTO CustomersBackup (CustomerName, ContactName, Country)
SELECT CustomerName, ContactName, Country
FROM Customers


--Update
UPDATE Customers
SET Country = 'USA'
WHERE CustomerName = 'Alfreds Futterkiste'

--Delete
TRUNCATE TABLE CustomersBackup


/* Difference between delete & truncate:
DELETE removes specific rows from a table based on a condition, 
while TRUNCATE removes all the rows from a table. 
TRUNCATE is faster and uses less transaction log space, 
but cannot be rolled back.*/