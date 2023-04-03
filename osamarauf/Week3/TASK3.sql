--Joins
	--Inner Join
select o.OrderID, o.OrderDate, c.CompanyName, o.ShipAddress from Customers c inner join Orders o on o.CustomerID=c.CustomerID order by 2;

select e.FirstName, e.LastName, o.OrderID, o.Freight, o.ShipAddress from Employees e inner join Orders o on e.EmployeeID = o.EmployeeID order by 1; 

	--OuterJoin
select o.OrderID, c.Fax, c.CompanyName, c.ContactName  from Customers c full outer join Orders o on c.CustomerID=o.CustomerID order by 1;

select Customers.CompanyName, Orders.OrderID from Customers full outer join Orders on Customers.CustomerID=Orders.CustomerID order by Customers.CompanyName;

	--Left Join
select products.*, suppliers.* from products left join suppliers on products.SupplierID = suppliers.SupplierID;

select customers.*, orders.OrderDate, orders.Freight from customers left join orders on customers.CustomerID = orders.CustomerID;

	--Right Join
select Products.ProductID, Products.ProductName from [Order Details] right join Products on [Order Details].ProductID = Products.ProductID;

	--Self Join
select c1.CustomerID, c1.PostalCode, c2.CustomerID from Customers c1 join Customers c2 on c1.PostalCode=c2.PostalCode where c1.CustomerID < c2.CustomerID;

select e1.FirstName as employee1, e2.FirstName as employee2 from Employees e1 join Employees e2 on e1.ReportsTo = e2.ReportsTo where e1.EmployeeID < e2.EmployeeID order by e1.ReportsTo;

	--Cross Join
select ProductID, ProductName, CategoryName from Products cross join Categories order by CategoryName;

select OrderID, CustomerID, ShipName, ShipAddress, ShipperID, CompanyName, Phone from Orders cross join Shippers;

	--Left anti-Join
SELECT * FROM employees WHERE NOT EXISTS ( SELECT 1 FROM orders WHERE orders.EmployeeID = employees.EmployeeID);

	--Right anti-Join
select * from Customers right join Orders on Customers.CustomerID = Orders.CustomerID where Orders.CustomerID IS NULL;



