USE northwind

-- -- 1 - Write a query to retrieve the names of all products that have been ordered more than 50 time.
-- SELECT P.ProductName
-- FROM Products P
-- JOIN [Order Details] OD ON P.ProductID = OD.ProductID
-- JOIN Orders O ON O.OrderID = OD.OrderID
-- WHERE O.ShippedDate IS NOT NULL
-- GROUP BY P.ProductName
-- HAVING COUNT(*) > 50;

-- 2 - Write a query to retrieve the names of all products that have been ordered at least once.
SELECT DISTINCT P.ProductName
FROM Products P
JOIN [Order Details] OD ON P.ProductID = OD.ProductID
JOIN Orders O ON O.OrderID = OD.OrderID
WHERE O.ShippedDate IS NOT NULL;

