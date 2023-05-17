use Northwind;

----Write a query to show a list of customers and their corresponding orders.

select Customers.CustomerID,Customers.CompanyName,Orders.OrderID,Orders.ShipCountry
from Customers
join Orders ON Customers.CustomerID=Orders.CustomerID;

-- Write a query to show a list of employees and their corresponding managers:

select EmployeeID,FirstName,LastName
from Employees;

--Write a query to show a list of customers who have not placed any orders.

select Orders.OrderID ,Orders.OrderDate,Customers.CustomerID
from Orders
inner join Customers ON Orders.CustomerID =Customers.CustomerID
where Orders.ShippedDate is null;

---Write a query to show a list of employees and their corresponding territories, 
---including those employees who have no territories assigned.

select Employees.EmployeeID , EmployeeTerritories.TerritoryID
from Employees
Full join EmployeeTerritories ON  Employees.EmployeeID =  EmployeeTerritories.EmployeeID;

