/* ---TASK 1---*/

select * from [Order Details]
where OrderID is not null
order by ProductID;

select distinct ProductID from [Order Details];

select top 100 *
from [Order Details]
order by OrderID desc;

select EmployeeID as ID, LastName as Name from Employees
where EmployeeID between 1 and 8;

select EmployeeID as ID, LastName as Name from Employees
where LastName in ('King');

select EmployeeID as ID, LastName as Name from Employees
where LastName like ('B%');

select EmployeeID as ID, LastName as Name from Employees
where Region is null;

select isnull(region, 'region not defined') as Region
from Employees;

/*---TASK 2---*/


select ProductName, UnitPrice, UnitsInStock from Products
where UnitPrice < 20
order by ProductName;

select OrderID, CustomerID, OrderDate from Orders
where CustomerID is null
order by OrderDate;

select * from Products;

SELECT Distinct CategoryName, ProductName, ShipCountry
FROM orders
JOIN [Order Details] ON orders.OrderID = [Order Details].OrderID
JOIN Products ON Products.ProductID = [Order Details].ProductID
JOIN Categories ON Categories.CategoryID = Products.CategoryID
;