ALTER TABLE Customers
ADD ValidFrom DATE,
    ValidTo DATE,
    SurrogateKey INT IDENTITY(1,1);

SELECT *, GETDATE() AS ValidFrom, '9999-12-31' AS ValidTo
INTO Customers_SCD2
FROM Customers;

UPDATE Customers_SCD2
SET ValidTo = DATEADD(DAY, -1, GETDATE())
WHERE CustomerID IN (
    SELECT C.CustomerID
    FROM Customers C
    JOIN Customers_SCD2 S ON C.CustomerID = S.CustomerID
    WHERE (
        C.CompanyName <> S.CompanyName
        OR C.ContactName <> S.ContactName
        OR C.ContactTitle <> S.ContactTitle
        -- Add additional attributes to compare
    )
    AND S.ValidTo = '9999-12-31'
);

INSERT INTO Customers_SCD2 (CustomerID, CompanyName, ContactName, ContactTitle, ValidFrom, ValidTo)
SELECT C.CustomerID, C.CompanyName, C.ContactName, C.ContactTitle, GETDATE(), '9999-12-31'
FROM Customers C
WHERE NOT EXISTS (
    SELECT 1
    FROM Customers_SCD2 S
    WHERE S.CustomerID = C.CustomerID
);

INSERT INTO Customers_SCD2 (CustomerID, CompanyName, ContactName, ContactTitle, ValidFrom, ValidTo)
SELECT C.CustomerID, C.CompanyName, C.ContactName, C.ContactTitle, GETDATE(), '9999-12-31'
FROM Customers C
WHERE NOT EXISTS (
    SELECT 1
    FROM Customers_SCD2 S
    WHERE S.CustomerID = C.CustomerID
);
