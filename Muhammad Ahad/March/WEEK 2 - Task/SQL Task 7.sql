--Insert multiple rows using a single INSERT statement:
INSERT INTO Customers (CustomerID, CompanyName, ContactName)
VALUES ('ALFKI', 'Alfreds Futterkiste', 'Maria Anders'),
       ('ANATR', 'Ana Trujillo Emparedados y helados', 'Ana Trujillo'),
       ('ANTON', 'Antonio Moreno Taquería', 'Antonio Moreno');


--Delete all rows with a certain value in a column:
DELETE FROM Customers
WHERE Country = 'Mexico';


--Delete all rows with a certain value in a column and a condition in another column:
DELETE FROM Customers
WHERE Country = 'Mexico' AND City = 'Mexico D.F.';


--Update multiple columns based on a condition:
UPDATE Customers
SET ContactName = 'Peter Franken', Phone = '555-123456'
WHERE Country = 'Germany';
