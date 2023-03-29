use Northwind

--Inner joins: The INNER JOIN keyword selects records that have matching values in both tables.
--Example 1
select customerid, shipName from Orders as o
inner join Employees as e on o.EmployeeID=e.EmployeeID 
inner join [Order Details] as od on od.OrderID=o.OrderID

--Example 2
select productname, UnitsInStock from Products as p
inner join Categories as c on c.CategoryID=p.CategoryID
inner join Suppliers as s on s.SupplierID=p.SupplierID

-- left joins: The LEFT JOIN keyword returns all records from the left table (table1), and the matching records from the right table (table2).
--Example 1
SELECT contactname,ContactTitle
FROM Customers as c
left join Orders as o on c.CustomerID=o.CustomerID

--example 2
select* from Employees as e
left join Orders as o on o.EmployeeID=e.EmployeeID

--Right Joins: The RIGHT JOIN keyword returns all records from the right table (table2), and the matching records from the left table (table1). The result is 0 records from the left side, if there is no match.
 
--example 1
 select * from employees as e
 right join Orders as o on o.EmployeeID=e.EmployeeID

--example 2
SELECT contactname,ContactTitle
FROM Customers as c
right join Orders as o on c.CustomerID=o.CustomerID

--Self-joins:it used to compare values in a table to other values of the same table by joining different parts of a table together.

select pd2.ProductID, pd.categoryid,
pd1.ProductName as p1,
pd2.ProductName as p2
from Products as pd1
inner join Products as pd2 on pd1.ProductID=pd2.ProductID
inner join products as pd on pd.CategoryID=pd1.CategoryID

--Cross Joins: CROSS JOIN creates all possible combinations of two  tables. it does not require On to join a field.

select ContactName, CompanyName from Customers
cross join Orders

