use schooldb

use northwind
/*
select orderid,ProductID,(Select AVG(unitprice) from [Order Details]) as AvgPrice from [Order Details]

select * from Employees

SELECT FirstName,EmployeeID FROM employees WHERE 
EmployeeID = (SELECT EmployeeID FROM employees WHERE Country='USA')
*/

/*
SELECT ProductName,ProductID,(SELECT COUNT(*)  
     FROM [Order Details] 
     WHERE ProductID=Products.ProductID) NoOfOrders
FROM Products 
WHERE 50 < 
    (SELECT COUNT(*) 
     FROM [Order Details] 
     WHERE ProductID=Products.ProductID);*/


GO

CREATE VIEW 
view_name 
AS
SELECT OrderID,OrderDate,CustomerID,ShipCountry
FROM orders
WHERE CustomerID NOT IN(
SELECT CustomerID FROM Customers
WHERE Country='USA	')
select * from view_name

GO
alter view view_name
as 
SELECT OrderID,OrderDate,CustomerID,ShipCountry
FROM orders
WHERE CustomerID NOT IN(
SELECT CustomerID FROM Customers
WHERE Country='France')

select * from view_name

drop view view_name

select * from view_name


CREATE TABLE productinparts(
    part_id   INT NOT NULL, 
    part_name VARCHAR(100)
);

What is the difference between Clustered and Non-Clustered Indexes in SQL Server?
August 28, 2017 by Ben Richardson
ApexSQL pricing
Indexes are used to speed-up query process in SQL Server, resulting in high performance. They are similar to textbook indexes. In textbooks, if you need to go to a particular chapter, you go to the index, find the page number of the chapter and go directly to that page. Without indexes, the process of finding your desired chapter would have been very slow.

The same applies to indexes in databases. Without indexes, a DBMS has to go through all the records in the table in order to retrieve the desired results. This process is called table-scanning and is extremely slow. On the other hand, if you create indexes, the database goes to that index first and then retrieves the corresponding table records directly.

There are two types of Indexes in SQL Server:

Clustered Index
Non-Clustered Index
Clustered Index
A clustered index defines the order in which data is physically stored in a table. Table data can be sorted in only way, therefore, there can be only one clustered index per table. In SQL Server, the primary key constraint automatically creates a clustered index on that particular column.

Let’s take a look. First, create a “student” table inside “schooldb” by executing the following script, or ensure that your database is fully backed up if you are using your live data:

 
CREATE DATABASE schooldb
          
CREATE TABLE student
(
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    gender VARCHAR(50) NOT NULL,
    DOB datetime NOT NULL,
    total_score INT NOT NULL,
    city VARCHAR(50) NOT NULL
 )
EXECUTE sp_helpindex student


CREATE CLUSTERED INDEX IX_tblStudent_Gender_Score
ON student(gender ASC, total_score DESC)
USE schooldb
 
DROP INDEX IX_tblStudent_Gender_Score ON student;

SELECT * FROM student