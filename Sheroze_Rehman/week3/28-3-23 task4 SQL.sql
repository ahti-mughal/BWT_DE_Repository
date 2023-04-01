use northwind
/*Write a query to show a list of customers and their corresponding orders*/
select CompanyName,ContactName,orders.OrderID,orders.OrderDate,orders.ShipCountry,orders.ShipVia 
from Customers
inner join Orders
ON Customers.CustomerID=Orders.CustomerID
ORDER BY CompanyName

select * from Employees

 /*Write a query to show a list of employees and their corresponding managers:*/
select Employees.FirstName as EmployeeName , Customers.ContactName as  Manager from Employees inner join Orders on
Employees.EmployeeID=Orders.EmployeeID inner join Customers on Customers.CustomerID=orders.CustomerID



/*Write a query to show a list of customers who have not placed any orders.*/
select * from Customers where CustomerID not in (
select CustomerID from Orders)


 /*Write a query to show a list of employees and their corresponding territories, 
 including those employees who have no territories assign
 select  employees.FirstName,employees.lastname, Territories*/

 select Employees.FirstName,EmployeeTerritories.EmployeeID,Territories.TerritoryDescription
 from Employees inner join EmployeeTerritories on 
 Employees.EmployeeID=EmployeeTerritories.EmployeeID inner join Territories on
 EmployeeTerritories.TerritoryID=Territories.TerritoryID
