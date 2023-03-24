# Exploring SQL: DDL, DML, and DQL Differences and Examples



## SQL (Structured Query Language)
It is a programming language used for `managing and manipulating` relational databases. It is used to `create,` `modify,` and `delete` database objects like `tables,` `views,` and `procedures,` and also to `retrieve` and `manipulate` data from those objects.


## DDL (Data Definition Language)
It is a `subset` of SQL that deals with `defining and modifying` the structure of database objects. Examples of DDL commands include `CREATE,` `ALTER,` and `DROP` statements. For instance, the `CREATE` TABLE statement is used to create a new table in the database.

```sql
-- Create a table using DDL

CREATE TABLE employees (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  age INT,
  department VARCHAR(50)
);
```

## DML (Data Manipulation Language)
It is another subset of SQL that deals with `adding,` `modifying,` and `deleting` data within the database. Examples of DML commands include `SELECT,` `INSERT,` `UPDATE,` and `DELETE` statements. For instance, the SELECT statement is used to retrieve data from one or more tables, while the INSERT statement is used to add new data to a table.
```sql
-- Insert data using DML
INSERT INTO employees (id, name, age, department)
VALUES (1, 'John', 25, 'Sales'), (2, 'Jane', 30, 'Marketing');
```
```sql
-- Update data using DML
UPDATE employees SET age = 26 WHERE id = 1;
```

## DQL (Data Query Language)
It is a subset of SQL used for `querying data` from one or more tables. It is used to retrieve data that meets specific criteria, such as data within a certain range or data that matches a particular condition. Examples of DQL commands include `SELECT` and FROM statements. For example, the SELECT statement can be used to retrieve all `rows` and `columns` from a particular table, or it can be used with a WHERE clause to retrieve only specific rows that meet certain criteria.
```sql
-- Retrieve data using DQL
SELECT * FROM employees WHERE department = 'Sales';
````




