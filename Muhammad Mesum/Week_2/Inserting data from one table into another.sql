USE northwind
SELECT ProductID, Quantity
INTO product_table_2
FROM [Order Details]
WHERE Quantity > 5;


INSERT INTO product_table_2 (ProductID, Quantity)
SELECT ProductID, Discount
FROM [Order Details]
WHERE Discount  0.15;

