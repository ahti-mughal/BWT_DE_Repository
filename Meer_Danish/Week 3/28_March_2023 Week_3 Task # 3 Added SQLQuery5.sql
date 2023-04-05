/* 3 Week_3 Task # 3 */
/* MEER DANISH as MR:D */

use Northwind

Select * from Orders
Select * from Employees
Select * from Customers
Select * from [Order Details]
Select * from Shippers



/* Inner Join */

Select Employees.EmployeeID , Employees.FirstName ,Orders.OrderID 
from Employees
inner join Orders ON 
Orders.EmployeeID = Employees.EmployeeID

Select Orders.OrderID , Orders.CustomerID ,[Order Details].ProductID
from Orders
inner join [Order Details] ON 
Orders.OrderID = [Order Details].OrderID

/* Right Join */

Select  Customers.CustomerID  ,Orders.OrderID
from Customers
right outer join Orders ON 
Customers.CustomerID = Orders.CustomerID

Select  Orders.OrderID, Employees.EmployeeID
from Orders
right outer join Employees ON 
Employees.EmployeeID = Orders.EmployeeID

/* Left Join */
Select  Customers.CustomerID  ,Orders.OrderID
from Customers
left outer join Orders ON 
Customers.CustomerID = Orders.CustomerID

Select  Orders.OrderID, Employees.EmployeeID
from Orders
left outer join Employees ON 
Employees.EmployeeID = Orders.EmployeeID

/* Outer Join */
Select  Customers.CustomerID  ,Orders.OrderID
from Customers
full outer join Orders ON 
Customers.CustomerID = Orders.CustomerID

Select  Employees.EmployeeID  ,Orders.OrderID
from Employees
full outer join Orders ON 
Employees.EmployeeID = Orders.EmployeeID

/* Self Join */
SELECT e1.LastName + ', ' + e1.FirstName AS EmployeeName, e2.LastName + ', ' + e2.FirstName AS SupervisorName
FROM Employees e1
LEFT JOIN Employees e2 ON e1.ReportsTo = e2.EmployeeID

SELECT e1.LastName + ', ' + e1.FirstName AS EmployeeName, e2.LastName + ', ' + e2.FirstName AS SupervisorName
FROM Employees e1
inner join Employees e2 ON e1.ReportsTo = e2.EmployeeID

/* Cross Join */
Select Customers.CustomerID, Customers.ContactName, Orders.OrderID,Orders.OrderDate
from Customers cross join Orders

Select Customers.CustomerID, Customers.ContactName, Shippers.ShipperID,Shippers.CompanyName
from Customers cross join Shippers

/* Left Anti-Join */
Select * from Customers Left join Orders
ON Customers.CustomerID = Orders.CustomerID 
where Orders.CustomerID Is NUll

Select * from Employees left join Orders
ON Employees.EmployeeID =Orders.EmployeeID
Where Employees.EmployeeID is Null

/* Right Anti-Join */
SELECT Products.ProductID,Products.ProductName,Products.CategoryID 
FROM  Products RIGHT JOIN [Order Details]
ON Products.ProductID = [Order Details].ProductID 
WHERE [Order Details].ProductID IS NULL;

/* Additional for Prctice */
SELECT EmployeeID, COUNT(OrderID) as num_orders
FROM Orders
GROUP BY EmployeeID
HAVING COUNT(OrderID) > 1;

