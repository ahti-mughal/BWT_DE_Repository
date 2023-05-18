-- Nested Subquery:

-- A nested subquery in SQL is a subquery that is embedded within another subquery. 
-- In other words, the inner subquery is executed first and the result of that subquery is used in the outer subquery.

-- Suppose we want to retrieve a list of customers who have placed orders for more than 1000 USD. 
-- We can use a nested subquery to accomplish this task.
SELECT c.CustomerID, c.ContactName
FROM Customers c
INNER JOIN Orders o
ON c.CustomerID = o.CustomerID
WHERE o.OrderID IN(
	SELECT OrderID 
	FROM [Order Details] od
	GROUP BY OrderID
	HAVING SUM(od.UnitPrice * od.Quantity) > 1000
);


-- What is the total number of products ordered by each customer, and how does this vary by region? 
-- Use a nested subquery to retrieve this information from the Northwind database.
SELECT 
	c.Region, COUNT(*) AS TotalProductsOrdered
FROM
	(
	SELECT c.CustomerID, o.OrderID
	FROM Orders o
	INNER JOIN Customers c
	ON c.CustomerID = o.CustomerID
	) AS oc
INNER JOIN [Order Details] od ON oc.OrderID = od.OrderID
INNER JOIN Products p ON od.ProductID = p.ProductID
INNER JOIN Customers c ON oc.CustomerID = c.CustomerID

GROUP BY c.Region
ORDER BY c.Region;


--Which customers have placed orders for products that are not currently in stock? 
--Write a nested subquery to find out, using the Northwind database.
SELECT
	CustomerID, ContactName
FROM 
	Customers
WHERE
	CustomerID IN(
		SELECT CustomerID
		FROM Orders
		WHERE OrderID IN(
			SELECT OrderID
			FROM [Order Details]
			WHERE ProductID IN(
				SELECT ProductID
				FROM Products
				WHERE ProductID IS NOT NULL
			)
		)
	)
