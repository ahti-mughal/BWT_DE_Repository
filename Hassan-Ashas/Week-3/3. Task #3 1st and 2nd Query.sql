-- Query 1: Retrieve the names of all products that have been ordered more than 50 times

SELECT ProductName
FROM Products
WHERE ProductID IN (
  SELECT ProductID
  FROM [Order Details]
  GROUP BY ProductID
  HAVING COUNT(*) > 50
);

-- Query 2: Retrieve the names of all products that have been ordered at least once
SELECT ProductName
FROM Products
WHERE ProductID IN (
  SELECT ProductID
  FROM [Order Details]
  GROUP BY ProductID
);

 select * from CategoryRevenue;

 SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'CategoryRevenue';