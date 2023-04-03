-- Select Example: Retrieve all columns and all rows from the Customers table.
SELECT * FROM Customers;

-- Where Example: Retrieve all customers from Germany.
SELECT * FROM Customers
WHERE Country = 'Germany';

-- Order By Example: Retrieve all products and order them by unit price in descending order.
SELECT * FROM Products
ORDER BY UnitPrice DESC;

-- Distinct Example: Retrieve all unique countries from the Customers table.
SELECT DISTINCT Country FROM Customers;

-- Isnull() Example: Retrieve all products and replace null values in the UnitsInStock column with 0.
SELECT ProductName, ISNULL(UnitsInStock, 0) AS UnitsInStock FROM Products;


-- Column Aliases Example: Retrieve all orders and rename the ShipName column to ShippingCompany.
SELECT ShipName AS ShippingCompany, * FROM Orders;

-- Between ... And Example: Retrieve all orders with a freight cost between $100 and $200.
SELECT * FROM Orders
WHERE Freight BETWEEN 100 AND 200;

-- In Example: Retrieve all customers from Germany, France, or UK.
SELECT * FROM Customers
WHERE Country IN ('Germany', 'France', 'UK');

-- Like Example: Retrieve all products with a product name that starts with 'Ch'.
SELECT * FROM Products
WHERE ProductName LIKE 'Ch%';

-- Is Null Example: Retrieve all products that are currently out of stock (i.e., UnitsInStock is null).
SELECT * FROM Products
WHERE UnitsInStock IS NULL;

-- Top n Example: Retrieve the top 10 most expensive products.
SELECT TOP 10 * FROM Products
ORDER BY UnitPrice DESC;

-- Union Example: Retrieve all customers from Germany and all customers from France.
SELECT * FROM Customers
WHERE Country = 'Germany'
UNION
SELECT * FROM Customers
WHERE Country = 'France';

-- Intersect Example: Retrieve all products that cost more than 30 and also have more than 10 units in stock.
SELECT * FROM Products
WHERE UnitPrice > 30
INTERSECT
SELECT * FROM Products
WHERE UnitsInStock > 10;


