SELECT p.product_name
FROM products p
INNER JOIN order_details od ON p.product_id = od.product_id
GROUP BY p.product_name
HAVING COUNT(*) > 50;

SELECT p.product_name
FROM products p
INNER JOIN order_details od ON p.product_id = od.product_id
GROUP BY p.product_name;

CREATE VIEW category_revenue AS
SELECT c.category_name, SUM(od.unit_price * od.quantity) AS total_revenue
FROM products p
INNER JOIN categories c ON p.category_id = c.category_id
INNER JOIN order_details od ON p.product_id = od.product_id
GROUP BY c.category_name;

SELECT * FROM category_revenue;
