-- Write a query to show a list of customers and their corresponding orders.

	select Customers.ContactName, Orders.OrderID,Orders.ShipName from Customers
	left join Orders
	on Orders.CustomerID=Customers.CustomerID
	order by Customers.CustomerID

-- Write a query to show a list of employees and their corresponding managers:
	SELECT A.FirstName+ ' '+ A.LastName AS "Employee Name", B.ReportsTo as "Manager Id"
      FROM Employees A, Employees B
      WHERE A.EmployeeID = B.EmployeeID;

-- Write a query to show a list of customers who have not placed any orders.
	select Customers.customerid, orderid
	from Customers
	left join Orders
	on Customers.CustomerID = Orders.CustomerID
	where orders.CustomerID is null



-- Write a query to show a list of employees and their corresponding territories, including those employees who have no territories assigned.
	SELECT  Employees.FirstName+Employees.LastName AS "Employee Name", EmployeeTerritories.EmployeeID,
        Territories.TerritoryID,EmployeeTerritories.TerritoryID
        FROM Employees Right JOIN EmployeeTerritories 
		on Employees.EmployeeID = EmployeeTerritories.EmployeeID 
		Right join Territories on Territories.TerritoryID = EmployeeTerritories.TerritoryID ;


