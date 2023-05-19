SELECT employees.employee_id, employees.employee_name, departments.dept_name
FROM employees
INNER JOIN departments ON employees.dept_id = departments.dept_id;

SELECT employees.employee_id, employees.employee_name, departments.dept_name
FROM employees
LEFT OUTER JOIN departments ON employees.dept_id = departments.dept_id;

SELECT employees.employee_id, employees.employee_name, departments.dept_name
FROM employees
LEFT JOIN departments ON employees.dept_id = departments.dept_id;

SELECT employees.employee_id, employees.employee_name, departments.dept_name
FROM employees
RIGHT JOIN departments ON employees.dept_id = departments.dept_id;

SELECT employees.employee_name, managers.employee_name AS manager_name
FROM employees
INNER JOIN employees AS managers ON employees.manager_id = managers.employee_id;

SELECT employees.employee_id, employees.employee_name, departments.dept_id, departments.dept_name
FROM employees
CROSS JOIN departments;

SELECT employees.employee_id, employees.employee_name
FROM employees
LEFT JOIN orders ON employees.employee

