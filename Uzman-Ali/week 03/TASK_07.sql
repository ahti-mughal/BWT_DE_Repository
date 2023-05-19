-- Practicing Case Satements here
USE northwind;

--1. What is Case Statement and what is it for, with example?
-- Case statements allows you to specify certain conditions and what you want queries
-- to return when certain conditions are met.

--> Syntax 
CASE expression
--  WHEN value1 THEN result1
--  WHEN value2 THEN result2
--    ...
--    ELSE default_result
END

-- Case Statements are often used to categorize thing or labeling things. You can aslo
-- do calculations with it. Let's understand it using Northwind DB.

SELECT  FirstName+ ' '+LastName AS Emp_Name, Title, TitleOfCourtesy, Country,
CASE 
    WHEN TitleOfCourtesy = 'Ms.' THEN 'FEMALE'
	WHEN TitleOfCourtesy = 'Mr.' THEN 'MALE'
	ELSE 'DOCTORATE'
END AS GENDER
FROM Employees

-- Here we make a new gender coulumn using employees title of courtesy.

--2. IF Statements in SQL
-- In SQL, 'IF' statement is used to perform conditional logic based on some boolean
-- expression.

--> Syntax
IF boolean_expression
    BEGIN
        -- block of code to be executed if the boolean expression is true
    END

-- Let look at at the example to understand it fully.

DECLARE @totaldiscount FLOAT
SET @totaldiscount = 0.1

IF @totaldiscount > 0
	BEGIN
		SELECT ProductName, UnitPrice * (1 - @totaldiscount) AS DiscountedPrice
        FROM Products
        WHERE Discontinued = 0
	END

-- First we declared a variable as a float and set it's value to 0.1.
-- We use IF statement, If the statement is 'TRUE' then the Select value will run.
-- Otherwisw it will give an empty result.

----------------------------QUESTIONS ANSWERS---------------------------------------

--Q1. Write a query to retrieve the product name, unit price, and discount for all 
-- orders in the "Order Details" table, and apply a discount of 10% if the unit price 
-- is greater than or equal to 50?

SELECT ProductName, P.UnitPrice, Discount,
CASE 
	WHEN P.UnitPrice >= 50 THEN P.UnitPrice * (1 - 0.1)
    ELSE P.UnitPrice
END AS DiscountedPrice

FROM [Order Details] 
JOIN Products as P
	ON [Order Details].ProductID = P.ProductID;


--Q.2 Write a query to retrieve the product name, unit price, and supplier name for 
-- all products in the "Products" table, and apply a case statement to display 
-- "Not available" if the supplier name is null?

SELECT ProductName, UnitPrice,
CASE 
	WHEN Suppliers.ContactName is NULL THEN 'not available'
    ELSE Suppliers.ContactName
END AS SuppliersName

FROM Products
LEFT JOIN Suppliers
	ON Products.SupplierID = Suppliers.SupplierID

