-- Using Northwind Database 
use Northwind

-- Select Employes Table 
select*from Employees
where city='London' -- filter specfic information
order by LastName -- order by Last name 
 

--Distinct show unique values and alise as unique_city 
SELECT distinct city as unique_city, country from Employees

--Isnull(expression, values). 
-- The ISNULL() function returns a specified value if the expression is NULL. If the expression is NOT NULL, this function returns the expression.
Select Region, ISNULL(Region, 'N/A') from Employees

--Predicates 'Between , And' key words in SQL
--lets try orders table this time
select*from Orders
where EmployeeID between 3 and 5;

-- The IN operator allows you to specify multiple values in a WHERE clause. and IN operator is a shorthand for multiple OR conditions.
Select * from Customers
Where Country IN ('Germany', 'UK')

--The following SQL statement selects all customers that are NOT located in "Germany" or "UK"
Select * from Customers
Where Country not IN ('Germany', 'UK')

--Like operator
--The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.
--ContactName start with 'A'
SELECT * FROM Customers
WHERE ContactName LIKE 'a%'

--end with A
SELECT * FROM Customers
WHERE ContactName LIKE '%a'

--any position contain specfic information
SELECT * FROM Customers
WHERE ContactName LIKE '%an%'

--start with a end with o
SELECT * FROM Customers
WHERE ContactName LIKE 'a%o'

--doesn't start with something 
SELECT * FROM Customers
WHERE ContactName not LIKE 'a%'

--The IS NULL command is used to test for empty values (NULL values).
SELECT Region, ContactName, Address
FROM Customers
WHERE Address IS NULL;

--Union 
SELECT City
FROM Customers
WHERE Country = 'USA'
UNION
SELECT City
FROM Customers
WHERE Country = 'Germany'

--Intersection
SELECT City,ContactName
FROM Customers
WHERE Country = 'USA'
INTERSECT
SELECT City,ContactName
FROM Customers
WHERE ContactName Like 'a%';

--Expect 
 SELECT City, ContactName
FROM Customers
WHERE Country = 'USA'
EXCEPT
SELECT City, ContactName
FROM Customers
WHERE  ContactName Like 'a%e';
