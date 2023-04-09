USE northwind
SELECT ProductID, Quantity
INTO product_table_2
FROM [Order Details]
WHERE Quantity > 5;

