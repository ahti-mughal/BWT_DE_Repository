USE northwind

-- -- Single Row Sub Query example: Retrieve product information for the product with the highest unit price.
-- SELECT * FROM Products
-- WHERE UnitPrice = (
-- 	SELECT MAX(UnitPrice)
-- 	FROM Products
-- );

-- -- Multi Row Sub Query example: Retrieve order information for orders that include products with a unit price greater than $20.
-- SELECT * FROM Orders
-- WHERE OrderID IN (
-- 	SELECT OrderID
-- 	FROM OrderDetails
-- 	WHERE UnitPrice > 20
-- );

-- -- Nested Sub Query example: Retrieve product information for products that have been ordered in quantity greater than the average quantity ordered for all products.
-- SELECT * FROM Products
-- WHERE ProductID IN (
-- 	SELECT ProductID
-- 	FROM OrderDetails
-- 	WHERE Quantity > (
-- 		SELECT AVG(Quantity)
-- 		FROM OrderDetails
-- 	)
-- );

-- -- Co-Related Sub Query example: Retrieve employee information for employees who have a higher salary than their managers.
-- SELECT * FROM Employees
-- WHERE ReportsTo IS NOT NULL
-- AND Salary > (
-- 	SELECT Salary
-- 	FROM Employees
-- 	WHERE EmployeeID = ReportsTo
-- );

-- Views

-- -- Purpose of Views: Views are virtual tables that are created based on the result of a SELECT statement. They can simplify the querying process by allowing users to query against a pre-defined subset of data. 

-- -- Creating a Simple View: Create a view that returns customer information for customers in the USA.
-- CREATE VIEW US_Customers AS
-- SELECT * FROM Customers
-- WHERE Country = 'USA';

-- -- Altering a Simple View: Modify the previously created view to only return the customer ID and contact name columns.
-- ALTER VIEW US_Customers AS
-- SELECT CustomerID, ContactName
-- FROM Customers
-- WHERE Country = 'USA';

-- -- Creating a Complex View: Create a view that returns order information for orders placed by customers in the USA.
-- CREATE VIEW US_Order_Info AS
-- SELECT O.OrderID, O.OrderDate, C.CustomerID, C.ContactName
-- FROM Orders O
-- JOIN Customers C ON O.CustomerID = C.CustomerID
-- WHERE C.Country = 'USA';

-- -- Dropping a View: Drop the previously created view.
-- DROP VIEW US_Order_Info;

-- Alternate Example

-- -- Creating a Simple View: Create a view that returns product information for products that are out of stock.
-- CREATE VIEW Out_Of_Stock_Products AS
-- SELECT ProductName, UnitsInStock, UnitsOnOrder
-- FROM Products
-- WHERE UnitsInStock = 0 AND UnitsOnOrder = 0;

-- -- Altering a Simple View: Modify the previously created view to include the product ID column.
-- ALTER VIEW Out_Of_Stock_Products AS
-- SELECT ProductID, ProductName, UnitsInStock, UnitsOnOrder
-- FROM Products
-- WHERE UnitsInStock = 0 AND UnitsOnOrder = 0;

-- -- Creating a Complex View: Create a view that returns customer and order information for orders placed in 1997.
-- CREATE VIEW Orders_1997 AS
-- SELECT C.CustomerID, C.CompanyName, O.OrderID, O.OrderDate, O.ShippedDate
-- FROM Customers C
-- JOIN Orders O ON C.CustomerID = O.CustomerID
-- WHERE YEAR(O.OrderDate) = 1997;

-- -- Dropping a View: Drop the previously created view.
-- DROP VIEW Orders_1997;

-- Indexes

-- -- Clustered Index: Create a clustered index on the Customers table using the CustomerID column
-- CREATE CLUSTERED INDEX IX_Customers_CustomerID ON Customers(CustomerID);

-- -- Nonclustered Index: Create a nonclustered index on the Orders table using the CustomerID column
-- CREATE NONCLUSTERED INDEX IX_Orders_CustomerID ON Orders(CustomerID);

-- Using Indexes: Use the previously created indexes to optimize queries

-- -- Query against the Customers table using the CustomerID index
-- SELECT * FROM Customers WHERE CustomerID = 'ALFKI';

-- -- Query against the Orders table using the CustomerID index
-- SELECT * FROM Orders WHERE CustomerID = 'ALFKI';

-- -- Dropping Indexes: Drop the previously created indexes
-- DROP INDEX IX_Customers_CustomerID ON Customers;
-- DROP INDEX IX_Orders_CustomerID ON Orders;

-- Alternate Example

-- Clustered Index: Create a clustered index on the Employees table using the EmployeeID column
-- CREATE CLUSTERED INDEX IX_Employees_EmployeeID ON Employees(EmployeeID);

-- -- Nonclustered Index: Create a nonclustered index on the Orders table using the EmployeeID and OrderDate columns
-- CREATE NONCLUSTERED INDEX IX_Orders_EmployeeID_OrderDate ON Orders(EmployeeID, OrderDate);

-- -- Using Indexes: Use the previously created indexes to optimize queries

-- -- Query against the Employees table using the EmployeeID index
-- SELECT * FROM Employees WHERE EmployeeID = 5;

-- -- Query against the Orders table using the EmployeeID and OrderDate index
-- SELECT * FROM Orders WHERE EmployeeID = 5 AND OrderDate BETWEEN '1996-07-01' AND '1996-07-31';

-- Dropping Indexes: Drop the previously created indexes
DROP INDEX IX_Employees_EmployeeID ON Employees;
DROP INDEX IX_Orders_EmployeeID_OrderDate ON Orders;