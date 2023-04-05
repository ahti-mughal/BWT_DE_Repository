-- Lets Create a Customer Table
SELECT FirstName as Name, Title, HireDate, Country, Notes
INTO Employee_Table
FROM northwind.dbo.Employees;

SELECT * FROM Employee_Table;

-- Update a Single Column
UPDATE Employee_Table
SET Name = 'Umer'
WHERE Name = 'Andrew';

-- Update a Multiple Column
UPDATE Employee_Table
SET Name = 'Umer F.', Country = 'Pakistan', Notes = 'Done BSCS From Edwardes College'
WHERE Name = 'Umer';
SELECT * FROM Employee_Table;