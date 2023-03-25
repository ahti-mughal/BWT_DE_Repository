CREATE TABLE employee (
  name VARCHAR(50),
  age INT,
  department VARCHAR(50)
);

-- To insert multiple rows into a table using a single INSERT statement:

INSERT INTO employee (name, age, department)
VALUES
  ('John', 25, 'Sales'),
  ('Mary', 30, 'Marketing'),
  ('Bob', 28, 'Finance');

-- To delete all the rows from a table that have a certain value in a column:

DELETE FROM employee
WHERE department = 'Sales';

-- To delete all the rows from a table that have a certain value in a column, and that meet a certain condition in another column:

DELETE FROM employee
WHERE department = 'Sales' AND age < 30;

-- To update multiple columns in a table based on a condition using the UPDATE statement:

UPDATE employee
SET age = 31, department = 'Marketing'
WHERE name = 'John';


