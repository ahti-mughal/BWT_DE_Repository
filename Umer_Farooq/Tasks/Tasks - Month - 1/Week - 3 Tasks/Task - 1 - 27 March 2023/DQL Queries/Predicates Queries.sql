-- AND:

-- A logical operator used to combine two or more conditions in a WHERE clause of a SQL statement. 
-- The AND operator returns true only if both conditions are true.

-- What are the names of all the products that have a unit price between $10 and $20, and are currently in stock?
SELECT ProductName, UnitPrice, UnitsInStock -- UnitPrice and UnitsInStock are optional
FROM Products
WHERE UnitPrice BETWEEN 10 AND 20
AND UnitsInStock > 0;

-- Which orders were placed by customers located in Germany and placed after January 1, 1995?
SELECT OrderID, ContactName, Country, OrderDate
FROM Orders as o
INNER JOIN Customers as c
ON o.CustomerID = c.CustomerID
WHERE Country = 'Germany' AND OrderDate > '1995-01-01';


-- OR:
-- A logical operator used to combine two or more conditions in a WHERE clause of a SQL statement. 
-- The OR operator returns true if at least one of the conditions is true.

-- What are the names of all the products that are in the categories "Beverages" or "Confections"?
-- It can also be achieve by INNER JOIN
SELECT ProductName
FROM Products
WHERE CategoryID IN ( -- This is a SubQuery Which Selects based on Where condition
SELECT CategoryID
FROM Categories
WHERE CategoryName = 'Beverages' OR CategoryName = 'Confections'
);

-- INNER JOIN
SELECT ProductName
FROM Products
INNER JOIN Categories
ON Products.CategoryID = Categories.CategoryID
WHERE CategoryName = 'Beverages' OR CategoryName = 'Confections';

-- Which orders were placed by customers located in France or Belgium?
SELECT OrderID, ContactName AS CustomerName, Country
FROM Customers AS c
INNER JOIN Orders AS o
ON c.CustomerID = o.CustomerID
WHERE c.Country = 'France' OR c.Country = 'Belgium';

-- IN & LIKE:

-- IN is a comparison operator used to compare a value to a list of values. 
-- The IN operator returns true if the value matches any of the values in the list.

--What are the names of all the products that are in the categories "Beverages", "Confections", or "Seafood"?
SELECT ProductName, CategoryName
FROM Products
INNER JOIN Categories
ON Products.CategoryID = Categories.CategoryID
WHERE CategoryName IN('Beverages', 'Confections', 'Seafood');

--Which customers are located in Germany, France, or Belgium?
SELECT ContactName, Country
FROM Customers
WHERE Country IN('Germany', 'France', 'Belgium');

-- LIKE: A comparison operator used to compare a string to a pattern. The pattern can include wildcard characters:
-- The percent wildcard (%): any string of zero or more characters.
-- The underscore (_) wildcard: any single character.
-- The [list of characters] wildcard: any single character within the specified set.
-- The [character-character]: any single character within the specified range.
-- The [^]: any single character not within a list or a range.

-- What are the names of all the products that have "Chai" in their product name?
SELECT ProductName 
FROM Products
WHERE ProductName LIKE 'Chai%';

-- Which customers are located in a city that starts with the letter "S"?
SELECT ContactName, City
FROM Customers
WHERE City LIKE 'S%';


-- Between:
-- The BETWEEN operator selects values within a given range. 
-- The values can be numbers, text, or dates.
-- The BETWEEN operator is inclusive: begin and end values are included. 

--What are the names, unit price of all the products that have a unit price between $5 and $10?
SELECT ProductName, UnitPrice
FROM Products
WHERE UnitPrice BETWEEN 5 AND 10;

--Which orders were placed between January 1, 1995 and December 31, 1995?
SELECT * 
FROM Orders
WHERE OrderDate BETWEEN '1995-01-01' AND '1995-12-31';

