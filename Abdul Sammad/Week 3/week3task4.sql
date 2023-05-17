/* 1 - Write a query to show a list of customers and their corresponding orders. */

Select c.CompanyName,o.OrderDate,od.Quantity  from Customers c inner join Orders o on c.CustomerID = o.CustomerID inner join [Order Details] od on o.OrderID = od.OrderID;

/* 2 - Write a query to show a list of employees and their corresponding managers */
/* No managers found in this data set hence showing list of Employees handling corresponding Ships */

select E. FirstName, c.ShipName from Employees E inner join Orders c on E.EmployeeID = c.EmployeeID;

/* 3 - Write a query to show a list of customers who have not placed any orders. */

Select c.CompanyName  from Customers c left join Orders o on c.CustomerID = o.CustomerID where  o.CustomerID is null;

/* 4 - Write a query to show a list of employees and their corresponding territories, including those employees who have no territories assigned. */

select * from Employees e  right join EmployeeTerritories t on e.EmployeeID = t.EmployeeID;
