SELECT customers.customer_name, orders.order_id, orders.order_date, orders.total_amount
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id;

SELECT e.employee_name AS employee, m.employee_name AS manager
FROM employees e
LEFT JOIN employees m ON e.manager_id = m.employee_id;

SELECT customers.customer_name
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id
WHERE orders.customer_id IS NULL;

SELECT e.employee_name AS employee, t.territory_name
FROM employees e
LEFT JOIN employee_territories et ON e.employee_id = et.employee_id
LEFT JOIN territories t ON et.territory_id = t.territory_id;