-- Left Join OR Left Outer Join:

-- A left join is a type of join in SQL that returns all the rows from the left table and 
-- matching rows from the right table based on a specified join condition. 
-- If there are no matching rows in the right table, the result will contain null values for the right table columns.

-- A left join will return all the rows from the left table, even if there are no matching rows in the right table. 
-- If there are no matching rows in the right table, the result will contain null values for the right table columns.



-- Questions:

--Which customers have not placed any orders yet?
SELECT c.ContactName, o.OrderID
FROM Customers c
LEFT JOIN Orders o
ON c.CustomerID = o.CustomerID
WHERE OrderID IS NULL;

--Which employees have not created any orders for customers in the USA?
SELECT e.EmployeeID, e.FirstName
FROM Employees e
LEFT JOIN Orders o
	ON e.EmployeeID = o.EmployeeID
LEFT JOIN Customers c
	ON o.CustomerID = c.CustomerID AND c.Country = 'USA'
WHERE o.OrderID IS NULL;

-- OR

SELECT EmployeeID, FirstName
FROM Employees
WHERE EmployeeID IN(
	SELECT EmployeeID
	FROM Orders
	WHERE OrderID IS NULL AND CustomerID IN(
		SELECT CustomerID
		FROM Customers
		WHERE Country = 'USA'
	)
);

SELECT OrderID, CustomerID, EmployeeID
FROM Orders
WHERE CustomerID IS NULL; -- No record for OrderID is NULL

--Which orders have been placed by customers in the "SP" region?
SELECT o.* -- Selecting all fields
FROM Orders o
LEFT JOIN Customers c
ON o.CustomerID = c.CustomerID
WHERE o.ShipRegion = 'SP';

-- In a left join, all the records from the left table (also known as the "left outer" table) are included in the output, 
-- along with matching records from the right table (also known as the "right outer" table) if any exist. 
-- If there are multiple matching records in the right table for a single record in the left table, 
-- then the resulting output will include multiple copies of the left table record with each matching right table record.

--For example, consider a scenario where the left table contains customer information and the right table contains order information. 
--If a customer has placed multiple orders, then a left join between the two tables would produce duplicate records for that customer 
--in the output, with each record corresponding to a different order.

--To avoid duplicate records in the output, you can use the DISTINCT keyword in your SQL query to eliminate duplicate rows based on 
--all the selected columns.