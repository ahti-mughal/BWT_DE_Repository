Use Northwind
/*TASK 3
1 - Joins:
     • Inner Join
     • Outer Join
     • Left Join
     • Right Join
     • Self Join
     • Cross Join
     • Left anti-Join
     • Right anti-Join

Atleat try two examples of all these joins.*/

--Inner Join: An inner join returns only the rows that have matching values in both tables being joined.
SELECT Orders.OrderID, Customers.ContactName FROM Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;

--Outer Join: An outer join returns all the rows from both tables being joined, and includes null values for any rows where there is no matching value in the other table.
SELECT Customers.CompanyName, Orders.OrderID FROM Customers
LEFT OUTER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

--Left Join: A left join returns all the rows from the left table being joined, and includes null values for any rows where there is no matching value in the right table.
SELECT Customers.CompanyName, Orders.OrderID FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

--Right Join: A right join returns all the rows from the right table being joined, and includes null values for any rows where there is no matching value in the left table.
SELECT Customers.CompanyName, Orders.OrderID FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

--Self Join: A self join is a join in which a table is joined with itself.
SELECT e1.LastName, e1.FirstName, e2.LastName AS ManagerLastName, e2.FirstName AS ManagerFirstName
FROM Employees AS e1, Employees AS e2 WHERE e1.ReportsTo = e2.EmployeeID;

--Cross Join: A cross join returns the Cartesian product of the two tables being joined, which means that every row from the first table is joined with every row from the second table.
SELECT Customers.CompanyName, Orders.OrderID
FROM Customers CROSS JOIN Orders;

/*TASK 4:
-1-Write a query to show a list of customers and their corresponding orders.
*/

SELECT customers.CustomerID, customers.CustomerID, orders.OrderID, orders.OrderDate
FROM customers INNER JOIN orders ON customers.CustomerID = orders.CustomerID;

--2- Write a query to show a list of employees and their corresponding managers:
SELECT e.EmployeeID,e.FirstName,e.LastName AS EmployeeName,m.EmployeeID AS ManagerID, m.FirstName , m.LastName AS ManagerName
FROM Employees e LEFT JOIN Employees m ON e.ReportsTo = m.EmployeeID;

--3- Write a query to show a list of customers who have not placed any orders.

SELECT c.CustomerID,c.ContactName FROM Customers c left join Orders o on c.CustomerID=o.CustomerID WHERE o.CustomerID is NULL

--4- Write a query to show a list of employees and their corresponding territories, including those employees who have no territories assigned.

SELECT e.EmployeeID, e.FirstName, e.LastName AS EmployeeName, t.TerritoryID, t.TerritoryDescription
FROM Employees e LEFT JOIN EmployeeTerritories et ON e.EmployeeID = et.EmployeeID LEFT JOIN Territories t ON et.TerritoryID = t.TerritoryID

