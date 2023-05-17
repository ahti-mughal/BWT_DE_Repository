-- A correlated subquery is a type of subquery in SQL that depends on the outer query for its execution. 
-- In other words, the subquery refers to a column from the outer query and uses it to generate its result set.

--This query returns a list of orders that includes only the most recent order for each customer.
SELECT *
FROM Orders o
WHERE o.OrderDate = (
	SELECT MAX(OrderDate)
	FROM Orders
	WHERE CustomerID = o.CustomerID -- It correlates the subquery with the outer query
	-- It is execuated for each row in the outer query.
)

-- ** Difference between Non-correlated & Correlated Subquery ** --

-- The main difference between correlated and non-correlated subqueries in SQL is that 
-- a non-correlated subquery can be executed independently of the outer query, 
-- while a correlated subquery depends on the outer query for its execution.

-- Noncorrelated Subquery: First Subquery is execuated and then OuterQuery

-- Outer Query selects all rows from orders where customerID is in the list of CustomerID returned by Subquery
SELECT * 
FROM Orders
WHERE CustomerID IN(
--Selecting All the CustomerID from Customers where Country is US.
	SELECT CustomerID
	FROM Customers
	WHERE Country = 'USA'
)

-- Noncorrelated Subquery: First Outer query is execuated and then Subquery

--This query selects all customers from the Customers table who have never placed an order. 
SELECT *
FROM Customers c
-- Not Exists, If there are no records then its true and the row from Customer table is included
WHERE NOT EXISTS(
	SELECT *
	FROM Orders o
	WHERE o.CustomerID = c.CustomerID -- Correlated subquery, becasue it refernces the outer query by CustomerID col
)

-- ** Questions **

--Which customers have placed orders with a total value greater than the average order value for their country?
SELECT 
	c.CustomerID,
	c.Country,
	SUM(od.UnitPrice * od.Quantity) AS TotalOrderValue,
	AVG(od.UnitPrice * od.Quantity) AS AvgOrderValue
FROM Customers c
INNER JOIN Orders o
	ON c.CustomerID = o.CustomerID
INNER JOIN [Order Details] od
	ON o.OrderID = od.OrderID
WHERE Country = c.Country
GROUP BY c.CustomerID, c.Country
HAVING SUM(od.UnitPrice * od.Quantity) > AVG(od.UnitPrice * od.Quantity) ;

-- Correlated SubQuery

SELECT 
	c.CustomerID,
	c.Country,
	SUM(od.UnitPrice * od.Quantity) AS TotalOrderValue,
	AVG(od.UnitPrice * od.Quantity) AS AvgOrderValue
FROM 
	Customers c
INNER JOIN Orders o
	ON c.CustomerID = o.CustomerID
INNER JOIN [Order Details] od
	ON o.OrderID = od.OrderID
WHERE Country = c.Country 
GROUP BY c.CustomerID, c.Country
HAVING SUM(od.UnitPrice * od.Quantity) > (
	SELECT AVG(od2.UnitPrice * od2.Quantity)
	FROM Orders o2
	INNER JOIN [Order Details] od2
	ON o2.OrderID = od2.OrderID
	WHERE o2.CustomerID = c.CustomerID
	);

-- How many orders were placed by each customer in the month following their first order, and what was the total value of those orders?

-- Selecting the required cols
SELECT
	c.CustomerID,
	COUNT(o.OrderDate) AS NumofOrders,
	SUM(od.UnitPrice * od.Quantity) AS TotalValueOrders
FROM 
	Customers c
INNER JOIN
	Orders o
	ON c.CustomerID = o.CustomerID
INNER JOIN
	[Order Details] od
	ON o.OrderID = od.OrderID
WHERE
	o.OrderDate > (SELECT MIN(OrderDate) FROM Orders WHERE CustomerID = c.CustomerID)
	AND
	o.OrderDate <= DATEADD(Month, 1, (SELECT MIN(OrderDate) FROM Orders WHERE CustomerID = c.CustomerID))
GROUP BY c.CustomerID
ORDER BY TotalValueOrders;