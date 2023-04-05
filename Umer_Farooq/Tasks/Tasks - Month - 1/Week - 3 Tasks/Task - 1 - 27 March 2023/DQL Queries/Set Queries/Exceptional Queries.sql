-- Except:

--The SQL Server EXCEPT compares the result sets of two queries and returns the distinct rows 
--from the first query that are not output by the second query. 
--In other words, the EXCEPT subtracts the result set of a query from another.

-- Rules:

--The following are the rules for combining the result sets of two queries in the above syntax:

--The number and order of columns must be the same in both queries.
--The data types of the corresponding columns must be the same or compatible.

--Which products have been ordered by customers, but not by employees?
-- We need two Queries:

--A query that returns all products ordered by customers
--A query that returns all products ordered by employees
SELECT ProductName
FROM Products
WHERE ProductID IN(
	SELECT ProductID
	FROM [Order Details]
	WHERE OrderID IN(
		SELECT OrderID
		FROM Orders
		WHERE CustomerID IS NOT NULL
	)
)

EXCEPT

SELECT ProductName
FROM Products
WHERE ProductID IN(
	SELECT ProductID
	FROM [Order Details]
	WHERE OrderID IN(
		SELECT OrderID
		FROM Orders
		WHERE EmployeeID IS NOT NULL
	)
);

--Which customers have placed orders, but have not ordered any products from the 'Beverages' category?
-- It will also have two queries
--1. One query will only check if customer have placed an order?
--2. Second query will ensure that Contacts that not order products from Beverages Cateogry will be returned
SELECT ContactName
FROM Customers
WHERE CustomerID IN(
	SELECT CustomerID
	FROM Orders
	WHERE OrderID IN(
		SELECT OrderID
		FROM [Order Details]
	)
)

EXCEPT

SELECT ContactName
FROM Customers
WHERE CustomerID IN(
	SELECT CustomerID
	FROM Orders
	WHERE OrderID IN(
		SELECT OrderID
		FROM [Order Details]
		WHERE ProductID IN(
			SELECT ProductID
			FROM Products
			WHERE CategoryID IN(
				SELECT CategoryID
				FROM Categories
				WHERE CategoryName = 'Beverages'
			)
		)
	)
);

--Which employees have created orders, but have not created any orders for customers in France?

SELECT CONCAT(FirstName, LastName) AS Employee
FROM Employees e
JOIN Orders o
ON e.EmployeeID = o.EmployeeID

EXCEPT 

SELECT CONCAT(FirstName, LastName) AS Employee
FROM Employees e
JOIN Orders o
ON e.EmployeeID = o.EmployeeID
JOIN Customers c
ON o.CustomerID = c.CustomerID
WHERE c.Country = 'France';

-- OR

SELECT CONCAT(FirstName, LastName) AS Employee
FROM Employees
WHERE EmployeeID IN(
	SELECT EmployeeID
	FROM Orders
)

EXCEPT -- It will only return the first query, excluding those which have or have not created order for France

SELECT CONCAT(FirstName, LastName) AS Employee
FROM Employees
WHERE EmployeeID IN(
	SELECT EmployeeID
	FROM Orders
	WHERE CustomerID IN(
		SELECT CustomerID
		FROM Customers
		WHERE Country = 'France'
	)
);
