--TASK 2

--Retrieve the product name, unit price, and units in stock of all products that cost less than $20, ordered by product name.
select ProductName, UnitPrice, UnitsInStock from Products where UnitPrice < 20 
order by ProductName

-- Retrieve the order ID, customer ID, and order date of all orders that do not have a customer ID, ordered by order date.
select OrderID, CustomerID, OrderDate from Orders where CustomerID is null
order by OrderDate

-- Retrieve the category names of all products, as well as the countries to which orders have been shipped, without any duplicates.

select distinct CategoryName, ShipCountry from Categories C, Products P,  [Order Details] OD,Orders O
where C.CategoryID = P.CategoryID
and P.ProductID = OD.ProductID
and OD.OrderID = O.OrderID
----------------------------------------------------------Task 3--------------------------------------------

select c.CustomerID,c.ContactName,o.OrderID,o.CustomerID from Customers as c inner join Orders as o on c.CustomerID=o.CustomerID;

select c.CustomerID,c.ContactName,o.OrderID,o.CustomerID from Customers as c full outer join Orders as o on c.CustomerID=o.CustomerID;

select * from Customers as c left join Orders as o on c.CustomerID=o.CustomerID order by c.CompanyName;

select * from Customers as c right join Orders as o on c.CustomerID=o.CustomerID order by o.OrderID;

SELECT A.CompanyName AS CustomerName1, B.CompanyName AS CustomerName2, A.City FROM Customers A, Customers B
WHERE A.CustomerID != B.CustomerID
AND A.City = B.City
ORDER BY A.City;

select c.CompanyName,c.CustomerID,o.CustomerID from Customers c cross join Orders o;

select * from Customers as c left join Orders as o on c.CustomerID=o.CustomerID where o.CustomerID like 'A%' order by c.CompanyName;

select * from Customers as c right join Orders as o on c.CustomerID=o.CustomerID where o.ShipPostalCode like '1%' order by o.OrderID;

----------------------------------------------------------Task 4--------------------------------------------

select c.CustomerID,c.CompanyName,o.OrderID from Customers c left join Orders o on o.CustomerID=c.CustomerID;

select e.EmployeeID,e.ReportsTo from Employees e left join Employees m on e.ReportsTo=m.EmployeeID;

select c.CompanyName,c.CustomerID,o.CustomerID from Customers c left join Orders o on c.CustomerID=o.CustomerID where o.CustomerID is null ;

select e.EmployeeID, e.FirstName, e.LastName, t.TerritoryID from Employees e
left join EmployeeTerritories ET on e.EmployeeID=et.EmployeeID
left join Territories t on et.TerritoryID=t.TerritoryID






