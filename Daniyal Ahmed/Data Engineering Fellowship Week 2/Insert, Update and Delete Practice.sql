CREATE  TABLE Customers (
     CustomerName varchar(100),
	 City varchar(100),
	 Country varchar(10),
);

INSERT INTO Customers (CustomerName, City, Country)
VALUES ('Cardinal', 'Stavanger', 'Norway');
SELECT * FROM Customers;
UPDATE Customers
SET CustomerName = 'Alfred Schmidt', City= 'Frankfurt'
WHERE Country = 'Norway';
SELECT * FROM Customers;
DELETE FROM Customers WHERE CustomerName='Alfreds Futterkiste';
SELECT * FROM Customers;