SELECT *
FROM Employees
WHERE salary > (SELECT AVG(salary) FROM Employees);

SELECT *
FROM employees
WHERE department_id IN (SELECT department_id FROM departments WHERE location_id = 1700);

SELECT *
FROM employees
WHERE department_id IN (
    SELECT department_id
    FROM departments
    WHERE location_id IN (
        SELECT location_id
        FROM locations
        WHERE country_id = 'US'
    )
);

SELECT *
FROM employees e1
WHERE salary = (
    SELECT MAX(salary)
    FROM employees e2
    WHERE e1.department_id = e2.department_id
);

CREATE VIEW customer_orders AS
SELECT c.customer_name, o.order_number, o.order_date, od.product_name, od.quantity
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_details od ON o.order_number = od.order_number;

ALTER VIEW customer_orders AS
SELECT c.customer_name, o.order_number, o.order_date, od.product_name, od.quantity, od.price
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_details od ON o.order_number = od.order_number;

DROP VIEW customer_orders;

CREATE VIEW top_employees AS
SELECT employee_name, salary, department
FROM employees
WHERE salary > 100000;

SELECT c.customer_name, 
       SUM(od.quantity * od.price) AS total_sales,
       (SELECT COUNT(*) FROM orders o WHERE o.customer_id = c.customer_id) AS total_orders
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_details od ON o.order_number = od.order_number
GROUP BY c.customer_name;

CREATE CLUSTERED INDEX idx_employee_id ON employees (employee_id);

CREATE NONCLUSTERED INDEX idx_customer_name ON customers (customer_name);

SELECT * FROM employees WHERE employee_id = 100;

SELECT product_name
FROM products
WHERE product_id IN (
  SELECT product_id
  FROM order_details
  GROUP BY product_id
  HAVING COUNT(*) > 50
);

SELECT product_name
FROM products
WHERE product_id IN (
  SELECT product_id
  FROM order_details
);

CREATE VIEW category_revenue AS
SELECT c.category_name, SUM(od.quantity * od.price) AS total_revenue
FROM categories c
JOIN products p ON c.category_id = p.category_id
JOIN order_details od ON p.product_id = od.product_id
GROUP BY c.category_name;