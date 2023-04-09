USE northwind

-- Case

-- SELECT ProductName, UnitPrice, UnitsInStock,
--    CASE
--       WHEN UnitsInStock > 0 THEN 'In Stock'
--       ELSE 'Out of Stock'
--    END AS Availability
-- FROM Products;

-- If

DECLARE @ProductId INT;
DECLARE @NewInventoryCount INT;

SET @ProductId = 1;
SET @NewInventoryCount = 10;

IF @NewInventoryCount > (SELECT UnitsInStock FROM Products WHERE ProductID = @ProductId) 
BEGIN
   UPDATE Products SET UnitsInStock = @NewInventoryCount WHERE ProductID = @ProductId;
END;


