-- Case Statement Example 

SELECT
distinct Products.ProductName,
[Order Details].UnitPrice,
(CASE
WHEN [Order Details].UnitPrice >= 50 THEN [Order Details].UnitPrice * 0.1
ELSE 0
END) AS TotalDiscount
FROM
[Order Details]
INNER JOIN Products ON [Order Details].ProductID = Products.ProductID
ORDER BY TotalDiscount desc;