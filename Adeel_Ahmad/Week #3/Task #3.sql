--Inner join / join
--It will select all matching entries from both tables.
SELECT Orders.OrderID, Customers.ContactName
FROM Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;


--Left outer join / Left join
--It will select all matching entries as well as all entries for left table (Orders).
SELECT Orders.OrderID, Customers.ContactName
FROM Orders
LEFT OUTER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;


--Right outer join / Right join
--It will select all matching entries as well as all entries for right table (Customers).
SELECT Orders.OrderID, Customers.ContactName
FROM Orders
RIGHT OUTER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;


--Full outer join / Full join
--It will select all entries from both tables, return NULL values for non matching rows.
SELECT Orders.OrderID, Customers.ContactName
FROM Orders
FULL OUTER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;


--Cross join
--Returns the Cartesian product of both tables, 
--which means it returns all possible combinations 
--of OrderID and Customers from both tables (Orders and Customers).
SELECT Orders.OrderID, Customers.ContactName
FROM Orders CROSS JOIN Customers


--Self join
--Self join is regular inner join applied on table to apply inner join on itself
--in self join that table work as both left and right table in inner join.
SELECT a.FirstName + ' ' + b.LastName AS FullName
FROM Employees a JOIN Employees b 
ON a.EmployeeID = b.EmployeeID;