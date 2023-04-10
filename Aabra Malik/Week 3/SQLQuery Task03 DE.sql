
                              --Week 03 Task 03--
							  --Using Northwind Database--
use northwind;

                              --Inner Join--
--Write a query to select all records from the two tables where there is a match in both tables.
SELECT * FROM Orders INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;
--Write a query to select all orders with customer information.
SELECT Orders.OrderID, Customers.ContactName FROM Orders INNER JOIN Customers  ON Orders.CustomerID = Customers.CustomerID;


                              --Outer Join--
--Write a query to selects all customers and all orders.
SELECT Customers.ContactName, Orders.OrderID  FROM Customers FULL OUTER JOIN Orders ON Customers.CustomerID=Orders.CustomerID;


							  --Left Join--
SELECT  OD.ProductID,O.ShipRegion FROM Orders as O LEFT JOIN [Order Details] as OD on O.OrderID = OD.OrderID


                              --Right Join--
SELECT  OD.ProductID,O.ShipRegion FROM Orders as O RIGHT JOIN [Order Details] as OD on O.OrderID = OD.OrderID


                              --Self Join--
SELECT e1.FirstName  + e1.LastName as Employee1, e2.FirstName + e2.LastName as Employee2
FROM Employees e1 JOIN Employees e2 on e1.ReportsTo = e2.ReportsTo WHERE e1.EmployeeID <> e2.EmployeeID


							  --Cross Join--
SELECT Customers.ContactName, Orders.OrderID FROM Customers CROSS JOIN Orders;


                              --Left anti-Join--
SELECT Customers.ContactName, Orders.OrderID
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
WHERE Orders.OrderID IS NULL;


                              --Right anti-Join--
SELECT Orders.OrderID, Employees.LastName, Employees.FirstName
FROM Orders
RIGHT JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
WHERE Orders.EmployeeID IS NULL;
