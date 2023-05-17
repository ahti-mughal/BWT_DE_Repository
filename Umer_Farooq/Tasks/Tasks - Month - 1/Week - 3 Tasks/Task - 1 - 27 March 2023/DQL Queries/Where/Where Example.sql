-- What are the names of all the products that have a unit price greater than $50?
-- WHERE with Comparision Operator (>)

SELECT ProductName
FROM northwind.dbo.Products
WHERE UnitPrice > 50; 

-- Which employees have a hire date between January 1, 1992 and December 31, 1994?

-- DATEDIFF(Year, HireDate, GETDATE()) AS Experiance 
-- DATEDIFF function calculates the difference between two dates in a specified unit of time, such as years, months, or days.
-- Here I get the difference between HireDate and Current Date(GetDate()) in years.

SELECT FirstName + ' ' + LastName as EmployeeName
FROM northwind.dbo.Employees
WHERE HireDate BETWEEN '1992-01-01' AND '1994-12-31'; 