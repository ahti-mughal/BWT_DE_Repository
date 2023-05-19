
                      --Week 03 Task 01--
				      --Using Northwind database--
use northwind;


                      --Selecting table names from northwind database--
SELECT TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE';


                      --selecting all records from specific tables--
SELECT * FROM ORDERS;
SELECT * FROM PRODUCTS;
SELECT * FROM EMPLOYEES;
SELECT * FROM CATEGORIES;


                      --Where Clause--
SELECT * FROM ORDERS WHERE ORDERID = 10250;
SELECT * FROM EMPLOYEES WHERE CITY = 'LONDON';


                      --Order by Clause--
SELECT ORDERID, CUSTOMERID, EMPLOYEEID FROM ORDERS ORDER BY ORDERID;
SELECT ORDERID, CUSTOMERID, EMPLOYEEID FROM ORDERS ORDER BY EMPLOYEEID;


                     --Distinct(Unique) Keyword--
SELECT DISTINCT ProductID, ProductName FROM PRODUCTS;
SELECT DISTINCT ORDERID, CUSTOMERID FROM ORDERS;
 

                    --Isnull() Function to check whether an expression is null or not--
Select EmployeeID, ReportsTo FROM EMPLOYEES WHERE ReportsTo is null;
SELECT EmployeeID, FirstName, ISNULL(ReportsTo, 0) AS ReportsTo FROM EMPLOYEES;


                    --Column aliasis--
SELECT FirstName AS Name, Address AS Employee_Address FROM Employees;
SELECT CategoryID AS ID, CategoryName AS C_Name FROM Categories;
 

                    --Predicates Conditions--
SELECT * FROM Employees WHERE EmployeeID BETWEEN 7 AND 9;
SELECT * FROM Orders WHERE OrderID BETWEEN 10254 AND 10299;
SELECT * FROM Orders WHERE ShipCity LIKE 'a%';
SELECT * FROM Orders WHERE ShipCity LIKE '%a';
SELECT * FROM Orders WHERE CustomerID LIKE '%a%';