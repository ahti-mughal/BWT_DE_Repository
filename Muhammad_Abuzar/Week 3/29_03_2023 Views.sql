--Views
--Views are virtual tables that are based on the result set of a SELECT statement. They can be used to simplify complex queries
--hide the complexity of the underlying tables, and provide security by restricting the access to the data. Here are some of the things you should know about views:

--a) Purpose of Views:
--Views have several purposes, including:
--Simplifying complex queries by providing a pre-defined query that can be reused.
--Hiding the complexity of the underlying tables by presenting a simpler structure to the user.
--Providing security by restricting the access to the data, so that only authorized users can see certain columns or rows.

--b) Creating Views:
--To create a view, you can use the CREATE VIEW statement, followed by the SELECT statement that defines the view.
-- Here is an example of a simple view that selects the first name and last name of employees from the Employee table:
CREATE VIEW EmployeeNames AS
SELECT FirstName, LastName
FROM Employee;


--c) Altering Views:
--You can alter an existing view by using the ALTER VIEW statement. Here is an example of how to add a new column to the EmployeeNames view
ALTER VIEW EmployeeNames
AS
SELECT FirstName, LastName, Title
FROM Employee;


--d) Dropping Views:
--To drop a view, you can use the DROP VIEW statement, followed by the name of the view. Here is an example of how to drop the EmployeeNames view:
DROP VIEW EmployeeNames;


--e) Simple and Complex Views:
--Views can be simple or complex, depending on the complexity of the underlying SELECT statement. Simple views are based on a single table
-- or a simple SELECT statement, while complex views can involve multiple tables, subqueries, or other complex constructs.
--Here is an example of a complex view that selects the customer name, product name, and order date from the Orders, OrderDetails, and Customers tables:
CREATE VIEW OrderSummary AS
SELECT c.CustomerName, p.ProductName, o.OrderDate
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN OrderDetails od ON o.OrderID = od.OrderID
JOIN Products p ON od.ProductID = p.ProductID;
