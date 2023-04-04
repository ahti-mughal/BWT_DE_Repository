

/* Write a query to show a list of customers and their corresponding orders. */
Select 
Customers.CustomerID, 
Customers.ContactName,
Orders.OrderID ,
Orders.OrderDate
From Customers
Inner Join Orders ON Customers.CustomerID=Orders.CustomerID

/*Write a query to show a list of employees and their corresponding managers:*/
Select 
e1.EmployeeID,
e1.FirstName,
e2.LastName as Manager_Name
from Employees e1
left join Employees e2
ON e1.EmployeeID=e2.ReportsTo

