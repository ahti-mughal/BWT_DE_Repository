-- Left Anti Join keeps all records of left table that do not match with records in right table.

--In SQL Server, Left Anti Join can be achieved using EXCEPT AND NOT EXISTS
--To write a left anti join query in Microsoft SQL Server, you can use the EXCEPT operator or the NOT EXISTS keyword.

--The EXCEPT operator returns all rows from the left table (the table before EXCEPT) that are not in the right table 
--(the table after EXCEPT). 

--You can use the NOT EXISTS keyword to filter out rows from the left table that have matching rows in the right table.

-- == Questions ==

-- Find all the customers who have not placed any orders.
SELECT CustomerID, ContactName
FROM Customers 

EXCEPT

SELECT CustomerID, ContactName
FROM Customers 
WHERE CustomerID IN(
	SELECT CustomerID
	FROM Orders);

-- Find all the products that have not been ordered yet. 

SELECT ProductID, ProductName
FROM Products p
WHERE NOT EXISTS(
	SELECT *
	FROM [Order Details] od
	WHERE p.ProductID = od.ProductID
)

--
SELECT ProductID, ProductName
FROM Products

EXCEPT

SELECT p.ProductID, ProductName
FROM Products p
INNER JOIN [Order Details] od
ON p.ProductID = od.ProductID;

--
SELECT ProductID, ProductName
FROM Products

EXCEPT

SELECT p.ProductID, ProductName
FROM Products p
WHERE ProductID IN(
	SELECT ProductID
	FROM [Order Details]
	WHERE OrderID IN(
		SELECT OrderID 
		FROM Orders
	)
)