-- Right Anti Join:

-- A Right Anti Join, also known as a Right Anti Semi Join, is a type of join operation in SQL that returns all the rows 
-- from the right table that do not have a matching value in the left table based on a specified condition. In other words, 
-- it returns only the non-matching rows from the right table.

-- You can use a Right Anti Join when you want to identify records that exist in the right table but do not have any matching records in the left table.

-- To use a Right Anti Join in Microsoft SQL Server, you can use the EXCEPT operator or the NOT EXISTS operator.

-- == Questions ==

--In the Northwind database, which products have not been ordered by any customers? 
--Write a SQL query using Right Anti Join to retrieve this information.

SELECT ProductID, ProductName
FROM Products p

EXCEPT

SELECT ProductID, ProductName
FROM Products p
WHERE ProductID IN(
	SELECT ProductID
	FROM [Order Details] od
	WHERE OrderID IN(
		SELECT OrderID
		FROM Orders 
		WHERE CustomerID IN(SELECT CustomerID FROM Customers)
	)

) 
-- OR

-- Solving Right Anti Join using NOT IN operator
SELECT ProductID, ProductName
FROM Products
WHERE ProductID NOT IN(SELECT ProductID FROM [Order Details]);

--Which employees have not been assigned to any orders in the Northwind database? 
--Write a SQL query using Right Anti Join to retrieve this information.
 
SELECT EmployeeID, CONCAT(FirstName, LastName) AS EmployeeName
FROM Employees
WHERE NOT EXISTS (
	SELECT * 
	FROM Orders
	WHERE Employees.EmployeeID = Orders.EmployeeID
);

-- OR

SELECT EmployeeID, CONCAT(FirstName, LastName) AS EmployeeName
FROM Employees
WHERE EmployeeID NOT IN(SELECT EmployeeID FROM Orders);

--Which suppliers in the Northwind database have not supplied any products to the company? 
--Write a SQL query using Right Anti Join to retrieve this information.

SELECT SupplierID, ContactName, CompanyName
FROM Suppliers
WHERE SupplierID NOT IN(SELECT SupplierID FROM Products);
--IN(SELECT SupplierID FROM Products WHERE SupplierID IS NULL);