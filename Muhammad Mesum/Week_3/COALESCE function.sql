USE northwind
UPDATE Employees
SET Region = COALESCE(Region, City)
WHERE Region IS NULL;

