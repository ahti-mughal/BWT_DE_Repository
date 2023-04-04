use Northwind
-- Select 
select ProductName from Products;
-- Select + Where
select ProductName from Products where UnitPrice > 50;
select ProductName from Products where Discontinued = 1
-- Order By
select ProductName from Products 
order by ProductID;

select ProductName from Products 
order by ProductID DESC;

-- Distinct 
select distinct UnitsOnOrder from Products;

select distinct UnitsInStock from Products
order by UnitsInStock;

-- isnull()
select ProductName,ISNULL(UnitsinStock, 00) as Stock_Units from Products; 

use sql_practice 
select isnull(manager_id, 0) from employees;

-- Alias (AS)
select ProductName as OutOfStock from Products where UnitsInStock = 0;

-- Between 
select ProductID,ProductName from Products where UnitPrice between 30 and 40;


-- Like 
select EmployeeID,Title from Employees where Title like '%Sales%' 
select EmployeeID,Title from Employees where Title like 'Sales%'
select EmployeeID,Title from Employees where Title like '%Sales'

-- IN 
select FirstName,LastName from Employees where Country in ('USA', 'UK')


-- Top n
select top 10 ProductName from Products 

-- UNION
select CategoryID  from Categories
union
select OrderID  from [Order Details]

-- Intersect
select CategoryID from Products
intersect
select OrderID from [Order Details]


-- Except (SELF MADE QUERY, Data Doesnt exist), Query returns Customers who have not placed their orders yet 
select customer_id from customers
except
select customer_id from orders








