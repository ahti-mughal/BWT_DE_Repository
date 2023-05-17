-- Right Join OR Right Outer Join:

-- Right join (also known as a right outer join) is a type of join that returns all the rows from the right table 
-- and the matching rows from the left table, as well as any non-matching rows (with null values) from the right table. 
-- In other words, a right join returns all the rows from the right table, regardless of whether they have a match 
-- in the left table.

--if the left table has more than one matching value for a given row in the right table, 
--a right join will produce duplicate rows in the result set. This is because each matching row in the 
--left table will be paired with the same row from the right table, resulting in multiple combinations of the same data.

-- The syntax for a right join is similar to a left join, but with the tables reversed.

-- Left Join can be used instead of Right Join:
--It's worth noting that right joins are less common than left joins, as they can often be accomplished using a left join 
--by simply reversing the order of the tables. However, in some cases a right join may be necessary or more efficient, 
--depending on the data and the specific requirements of the query.


-- Questions:

--Which suppliers have not provided any products?
SELECT s.SupplierID, s.ContactName
FROM Products p
RIGHT JOIN Suppliers s
ON p.SupplierID = s.SupplierID
WHERE ProductID IS NULL;

--Which orders have been placed by customers that do not have a corresponding employee record?
SELECT o.OrderID, o.CustomerID, o.EmployeeID
FROM Customers c
RIGHT OUTER JOIN Orders o
ON c.CustomerID = o.CustomerID
WHERE o.EmployeeID NOT IN(
	SELECT EmployeeID
	FROM Employees
);

-- Just for verification
SELECT OrderID, CustomerID, EmployeeID
FROM Orders
WHERE EmployeeID IS NULL;

--Which employees have not created any orders, but have corresponding records in the Employees table?
SELECT e.EmployeeID, e.FirstName+' '+LastName AS Name
FROM Orders o
RIGHT JOIN Employees e
ON o.EmployeeID = e.EmployeeID
WHERE o.OrderID IS NULL;

-- Not a part of answer, just for verification
SELECT OrderID FROM orders WHERE OrderID IS NULL;