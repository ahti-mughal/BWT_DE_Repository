-- Create a new table called 'Orders2' with an identity column
CREATE TABLE Orders2 (
  OrderID int IDENTITY(1,1) PRIMARY KEY,
  CustomerID nchar(5),
  EmployeeID int,
  OrderDate datetime,
  ShipVia int
);

-- Insert a new row into the 'Orders2' table
INSERT INTO Orders2 (CustomerID, EmployeeID, OrderDate, ShipVia)
VALUES ('ALFKI', 3, '2023-03-27 14:30:00', 1);

-- Display the contents of the 'Orders2' table
SELECT * FROM Orders2;


-- Create a new table called 'Orders3' by copying the structure of the 'Orders' table
SELECT * INTO Orders3 FROM Orders WHERE 1=0;

-- Insert some rows from the 'Orders' table into the 'Orders3' table
INSERT INTO Orders3 SELECT * FROM Orders WHERE CustomerID = 'ALFKI';

-- Display the contents of the 'Orders3' table
SELECT * FROM Orders3;

-- Insert some rows from the 'Orders' table into the 'Orders2' table
INSERT INTO Orders2 (CustomerID, EmployeeID, OrderDate, ShipVia)
SELECT CustomerID, EmployeeID, OrderDate, ShipVia FROM Orders WHERE CustomerID = 'ALFKI';

-- Display the contents of the 'Orders2' table
SELECT * FROM Orders2;


-- Update the 'City' column of the 'Customers' table for a specific customer
UPDATE Customers 
SET City = 'Seattle' 
WHERE CustomerID = 'ALFKI';

-- Display the updated row from the 'Customers' table
SELECT * FROM Customers WHERE CustomerID = 'ALFKI';

-- Truncate the 'Orders2' table to delete all rows
TRUNCATE TABLE Orders2;

-- Display the contents of the 'Orders2' table (which should be empty)
SELECT * FROM Orders2;

-- Delete a row from the 'Customers' table
DELETE FROM Customers WHERE CustomerID = 'ALFKI';

-- Display the contents of the 'Customers' table after deleting the row
SELECT * FROM Customers;

-- Truncate the 'Orders2' table
TRUNCATE TABLE Orders2;

-- Display the contents of the 'Orders2' table (which should be empty)
SELECT * FROM Orders2;


-- Delete a row from the 'Customers' table
DELETE FROM Customers WHERE CustomerID = 'ALFKI';

-- Display the contents of the 'Customers' table after deleting the row
SELECT * FROM Customers;

-- Truncate the 'Orders2' table
TRUNCATE TABLE Orders2;

-- Display the contents of the 'Orders2' table (which should be empty)
SELECT * FROM Orders2;






