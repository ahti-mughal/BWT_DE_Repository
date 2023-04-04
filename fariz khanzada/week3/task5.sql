SELECT ProductName, UnitPrice
FROM Products
WHERE UnitPrice = (SELECT MAX(UnitPrice) FROM Products);

SELECT ProductName, UnitPrice, CategoryID
FROM Products
WHERE CategoryID IN (SELECT CategoryID FROM Categories WHERE CategoryName = 'Beverages');

SELECT ProductName, UnitPrice
FROM Products
WHERE CategoryID IN (SELECT CategoryID FROM Categories WHERE CategoryName IN (SELECT CategoryName FROM Categories WHERE CategoryID = 4));


SELECT ProductName, UnitPrice
FROM Products p
WHERE UnitPrice > (SELECT AVG(UnitPrice) FROM Products WHERE CategoryID = p.CategoryID);


CREATE VIEW EmployeesByRegion
AS
SELECT FirstName, LastName, Region
FROM Employees
ORDER BY Region, LastName;

ALTER VIEW EmployeesByRegion
AS
SELECT FirstName, LastName, Region, Country
FROM Employees
ORDER BY Country, Region, LastName;

DROP VIEW EmployeesByRegion;



CREATE INDEX idx_Employee_LastName ON Employees (LastName);
ALTER INDEX idx_Employee_LastName ON Employees
REBUILD;

DROP INDEX idx_Employee_LastName ON Employees;

SELECT FirstName, LastName, homephone 
FROM Employees
WHERE LastName = 'Doe';
