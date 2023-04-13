SELECT * FROM employees WHERE employee_id = (SELECT manager_id FROM departments WHERE department_id = 10);

SELECT * FROM employees WHERE department_id IN (SELECT department_id FROM departments WHERE location_id = 1700);

SELECT * FROM employees WHERE department_id = (SELECT department_id FROM departments WHERE location_id = (SELECT location_id FROM locations WHERE city = 'London'));

SELECT employee_id, first_name, last_name, salary
FROM employees e
WHERE salary > (SELECT AVG(salary) FROM employees WHERE department_id = e.department_id);


CREATE VIEW view_name AS SELECT column1, column2, ... FROM table_name WHERE condition;
ALTER VIEW view_name AS SELECT column1, column2, ... FROM table_name WHERE condition;
DROP VIEW view_name;

CREATE VIEW sales_summary AS SELECT products.product_name, SUM(order_details.quantity * order_details.unit_price) AS total_sales
FROM order_details
INNER JOIN products ON order_details.product_id = products.product_id
GROUP BY products.product_name;

CREATE INDEX index_name ON table_name (column1, column2, ...);
ALTER INDEX index_name ON table_name REBUILD;
DROP INDEX index_name ON table_name;


SELECT column1, column2, ... FROM table_name WHERE column1 = value;
