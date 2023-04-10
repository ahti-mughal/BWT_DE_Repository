USE northwind
/* SQL JOINS

A JOIN clause is used to combine rows from two or more tables, based on a related column between them.

*/

SELECT * FROM Customers
SELECT * FROM Orders
SELECT * FROM Shippers

--SQL INNER JOIN 
--The INNER JOIN keyword selects records that have matching values in both tables.

SELECT O.OrderID,C.CompanyName,O.OrderDate
FROM Orders O
INNER JOIN Customers C ON O.CustomerID = C.CustomerID 


--JOIN Three Tables
--The following SQL statement selects all orders with customer and shipper information:

SELECT O.OrderID,C.CompanyName,O.OrderDate,S.CompanyName
FROM Orders O
INNER JOIN Customers C ON O.CustomerID = C.CustomerID
INNER JOIN Shippers S ON O.ShipVia = S.ShipperID 


/* SQL LEFT JOIN Keyword
The LEFT JOIN keyword returns all records from the left table (table1),
and the matching records from the right table (table2). 
The result is 0 records from the right side, if there is no match.
*/

SELECT O.OrderID,C.CompanyName,O.OrderDate
FROM Orders O
LEFT JOIN Customers C ON O.CustomerID = C.CustomerID 

/* SQL RIGHT JOIN Keyword
The RIGHT JOIN keyword returns all records from the right table (table2), 
and the matching records from the left table (table1). The result is 0 records from the left side, if there is no match.
*/

SELECT O.OrderID,C.CompanyName,O.OrderDate
FROM Orders O
Right JOIN Customers C ON O.CustomerID = C.CustomerID 

/* SQL FULL OUTER JOIN Keyword
The FULL OUTER JOIN keyword returns all records when there is a match in left (table1) or right (table2) table records.
*/

SELECT O.OrderID,C.CompanyName,O.OrderDate
FROM Orders O
FULL OUTER JOIN Customers C ON O.CustomerID = C.CustomerID 

--NOTE: FULL OUTER JOIN and FULL JOIN are the same.


/* SQL Self Join
A self join is a regular join, but the table is joined with itself.

Self Join Syntax

SELECT column_name(s)
FROM table1 T1, table1 T2
WHERE condition;
T1 and T2 are different table aliases for the same table.

*/

SELECT A.CompanyName AS CompanyName1, B.CompanyName AS CompanyName2, A.City
FROM Customers A, Customers B
WHERE A.CustomerID <> B.CustomerID
AND A.City = B.City 
ORDER BY A.City;


