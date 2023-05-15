SELECT p.product_name, od.unit_price,
       CASE 
           WHEN od.unit_price >= 50 THEN od.unit_price * 0.9
           ELSE od.unit_price
       END AS discounted_price
FROM products p
INNER JOIN order_details od ON p.product_id = od.product_id;

SELECT p.product_name, p.unit_price,
       CASE 
           WHEN s.company_name IS NULL THEN 'Not available'
           ELSE s.company_name
       END AS supplier_name
FROM products p
LEFT JOIN suppliers s ON p.supplier_id = s.supplier_id;
