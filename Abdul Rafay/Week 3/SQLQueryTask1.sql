use Northwind;

select* from Orders


select* from Categories
where CategoryName='Produce';

select CategoryID,CategoryName from Categories
order by CategoryID ;

select distinct CategoryID,CategoryName 
from Categories;

select CategoryID,CategoryName 
from Categories
where CategoryID is null;

select CategoryID as id 
from Categories;

SELECT AVG(ISNULL(Freight , 50)) 
FROM Orders ;

SELECT *
FROM Orders
WHERE EmployeeID BETWEEN 6 AND 10;

SELECT * FROM Orders
WHERE CustomerID IN ('TOMSP', 'RICSU', 'SPLIR');

SELECT * FROM Orders
WHERE CustomerID LIKE 'a%';

SELECT * FROM Orders
WHERE CustomerID LIKE '%a';

SELECT * FROM Orders
WHERE CustomerID LIKE '%a%';



