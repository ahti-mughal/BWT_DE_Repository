-- Full Outer Join:

--Full Outer Join in SQL is a type of join that returns all the rows from both tables, 
--matching the rows where possible and displaying NULL values for the non-matching rows. 
--In other words, it combines the results of both left and right outer joins.

-- When to use Full Outer Join in SQL?

--Full Outer Join is used when you want to return all the rows from both tables, even when there are no matching rows in the other table. 
--This is useful when you want to compare the data between two tables and see the differences or when you want to combine two tables that have non-matching rows.

-- Questions:

--Which customers have placed orders and which customers have not placed any orders? 
--Use a Full Join to show all customers, and include the OrderID for customers who have placed orders.
SELECT  o.OrderID, c.*
FROM Customers  AS c  --using a FULL OUTER JOIN to combine the results of both tables,
FULL OUTER JOIN Orders AS o --so that we include all customers, whether they have placed any orders or not.
ON c.CustomerID = o.CustomerID
ORDER BY c.CustomerID; --Ordering Data by CustomerID, so that cuastomer placed an order coems first and then those who didnt placed any


--Which products have been ordered and which products have not been ordered? 
--Use a Full Join to show all products, and include the OrderID for products that have been ordered.
SELECT o.OrderID, p.ProductName, p.ProductID
FROM Products p
FULL JOIN [Order Details] od
ON p.ProductID = od.ProductID
	FULL OUTER JOIN Orders o
	ON od.OrderID = o.OrderID
ORDER BY p.ProductID;


--Which suppliers have provided products and which suppliers have not provided any products? 
--Use a Full Join to show all suppliers, and include the ProductID for suppliers who have provided products.
SELECT s.SupplierID, p.ProductID, s.CompanyName, s.ContactName, s.ContactTitle
FROM Suppliers AS s
FULL JOIN Products AS p
ON s.SupplierID = p.SupplierID
ORDER BY s.SupplierID;