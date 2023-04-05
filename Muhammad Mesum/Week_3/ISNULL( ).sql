USE northwind 
SELECT EmployeeID,Lastname,Firstname,Title,City, ISNULL(Region,'-') as Region
FROM Employees




