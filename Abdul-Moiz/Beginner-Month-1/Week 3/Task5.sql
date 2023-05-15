use Northwind

===== Single Row SubQueries
select top 10 ProductName from Products
where UnitsInStock > (select AVG(UnitsInStock) from Products)

select *
from Products
where UnitPrice > (
  select AVG(UnitPrice)
  from Products
);

==== MultiRow SubQueries
SELECT FirstName,LastName FROM Employees
WHERE ReportsTo IN (
  SELECT EmployeeID FROM Employees
  WHERE Title = (
    SELECT Title FROM Employees
    WHERE EmployeeID = reportsTo
  )
);

SELECT ContactName
FROM Customers
WHERE NOT EXISTS (
  SELECT *
  FROM Orders
  WHERE Orders.CustomerID = Customers.CustomerID
);

==== Nested Subqueries

SELECT ProductName FROM Products
WHERE ProductID IN (
  SELECT ProductID FROM [Order Details]
  WHERE OrderID IN (
    SELECT OrderID FROM Orders
    WHERE CustomerID IN (
      SELECT CustomerID FROM Customers
      WHERE Country = 'Argentina'
    )
  )
);


== CoRelated SubQuery 
SELECT *
FROM Products P
WHERE UnitPrice > (
  SELECT AVG(UnitPrice)
  FROM Products
  WHERE CategoryID = P.CategoryID
);
===== INDEX

CREATE INDEX idx_Employees_EmployeeID ON Employees(EmployeeID);

ALTER INDEX idx_Employees_EmployeeID ON Employees ADD Department;

DROP INDEX idx_Employees_EmployeeID ON Employees;

--- Using an index

SELECT * FROM Employees WITH(INDEX(idx_Employees_EmployeeID) WHERE EmployeeID = 123;

==== VIEWS 
--- Creating a View
CREATE VIEW my_view AS
SELECT ProductID, ProductName, CategoryName, SupplierName
FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID;


-- ALtering a View 
ALTER VIEW my_view
AS
SELECT ProductID, ProductName, CategoryName, SupplierName, UnitsInStock
FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID;


-- Dropping a view 
DROP VIEW my_view;












