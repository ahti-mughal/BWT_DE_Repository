IF EXISTS (SELECT * FROM customers WHERE customer_id = 123 AND discount = 1)
  BEGIN
    SELECT 'Customer has discount';
  END

  SELECT order_id, 
  CASE 
    WHEN shipped_date IS NOT NULL THEN 'Shipped'
    WHEN order_date < GETDATE() THEN 'Pending'
    ELSE 'New'
  END AS order_status
FROM orders;

SELECT product_name, unit_price, 
  CASE 
    WHEN unit_price >= 50 THEN unit_price * 0.9
    ELSE unit_price
  END AS discounted_price
FROM products
JOIN order_details ON products.product_id = order_details.product_id;

SELECT product_name, unit_price, 
  CASE 
    WHEN suppliers.supplier_name IS NULL THEN 'Not available'
    ELSE suppliers.supplier_name
  END AS supplier_name
FROM products
LEFT JOIN suppliers ON products.supplier_id = suppliers.supplier_id;