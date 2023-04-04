 -- Intersect:

 --The SQL Server INTERSECT combines result sets of two or more queries and 
 --returns distinct rows that are output by both queries.

 -- Rules:

 --Similar to the UNION operator, the queries in the syntax above must conform to the following rules:

--1.Both queries must have the same number and order of columns.
--2.The data type of the corresponding columns must be the same or compatible.

--Which products have been ordered by both customers and employees?
SELECT ProductName
FROM Products
WHERE ProductID IN(
	SELECT ProductID
	FROM [Order Details]
	WHERE OrderID IN(
		SELECT OrderID
		FROM Orders
		WHERE CustomerID IN(
			SELECT CustomerID
			FROM Customers
		)
	)
)

INTERSECT

SELECT ProductName
FROM Products
WHERE ProductID IN(
	SELECT ProductID
	FROM [Order Details]
	WHERE OrderID IN(
		SELECT OrderID
		FROM Orders
		WHERE EmployeeID IN(
			SELECT EmployeeID
			FROM Employees
		)
	)
);

--Which countries have both customers and suppliers in the Northwind database?
SELECT Country
FROM Customers

INTERSECT

SELECT Country
FROM Suppliers;

--Which products have been ordered by customers in both the USA and in Germany?
SELECT ProductName
FROM Products
WHERE ProductID IN(
	SELECT ProductID
	FROM [Order Details]
	WHERE OrderID IN(
		SELECT OrderID
		FROM Orders
		WHERE CustomerID IN(
			SELECT CustomerID
			FROM Customers
			WHERE Country = 'USA'
		)
	)
)

INTERSECT

SELECT ProductName
FROM Products
WHERE ProductID IN(
	SELECT ProductID
	FROM [Order Details]
	WHERE OrderID IN(
		SELECT OrderID
		FROM Orders
		WHERE CustomerID IN(
			SELECT CustomerID
			FROM Customers
			WHERE Country = 'Germany'
		)
	)
);