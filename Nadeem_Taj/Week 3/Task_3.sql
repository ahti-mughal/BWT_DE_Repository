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
 select * from employees as e
 right join Orders as o on o.EmployeeID=e.EmployeeID