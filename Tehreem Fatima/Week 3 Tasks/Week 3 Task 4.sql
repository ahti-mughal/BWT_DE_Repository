
                              --Week 03 Task 04--
							  --Using Northwind Database--
use northwind;


-- Write a query to show a list of customers and their corresponding orders.
SELECT Customers.ContactName, Orders.OrderID,Orders.ShipName
FROM Customers  
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID; 


--Write a query to show a list of employees and their corresponding managers

SELECT A.FirstName+ ' '+ A.LastName AS "Employee Name", B.ReportsTo
FROM Employees A, Employees B
WHERE A.EmployeeID = B.EmployeeID;
      

--Write a query to show a list of customers who have not placed any orders.

SELECT Customers.ContactName, Orders.OrderID,Orders.ShipName
FROM Customers LEFT JOIN Orders 
ON Customers.CustomerID = Orders.CustomerID
where Orders.CustomerID is NULL;


--Write a query to show a list of employees and their corresponding territories, including those employees who have no territories assigned.
select Employees.EmployeeID , EmployeeTerritories.TerritoryID
from Employees
FULL JOIN EmployeeTerritories 
ON  Employees.EmployeeID =  EmployeeTerritories.EmployeeID;
