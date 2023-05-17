-- Practice following in detail:

-- 1 - Joins:
--     � Inner Join
		select ProductName,CategoryName from Categories
		inner join Products
		on Categories.CategoryID=Products.CategoryID

--     � Outer Join
		select firstname,lastname,orderid
		from Orders
		full outer join Employees 
		on Employees.EmployeeID=Orders.EmployeeID
--     � Left Join
		
		select companyname, orderid,orderdate,ShipVia
		from Orders
		left join Shippers
		on Orders.ShipVia=Shippers.ShipperID
		order by OrderDate
		

--     � Right Join
		
		select companyname, orderid,orderdate,ShipVia
		from Orders
		right join Shippers
		on Orders.ShipVia=Shippers.ShipperID
		order by OrderDate

--     � Self Join

--     � Cross Join
		select companyname, orderid,orderdate,ShipVia
		from Orders
		cross join Shippers
		order by OrderDate

--     � Left anti-Join
		SELECT  Territories.TerritoryID,EmployeeTerritories.TerritoryID
        FROM Territories LEFT  JOIN EmployeeTerritories 
	    on Territories.TerritoryID = EmployeeTerritories.TerritoryID
		where EmployeeTerritories.TerritoryID is null;

		SELECT Customers.ContactName, Orders.OrderID,Orders.ShipName
        FROM Customers Left JOIN Orders 
		on Customers.CustomerID = Orders.CustomerID where Orders.CustomerID is NULL;
--     � Right anti-Join
		SELECT Customers.City,Employees.City
        FROM Customers Right JOIN Employees 
		on Customers.Region = Employees.Region where Customers.Region is NULL;

