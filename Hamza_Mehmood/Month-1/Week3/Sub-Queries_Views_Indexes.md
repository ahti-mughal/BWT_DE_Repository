# Optimize Your SQL Queries with Subqueries, Views, and Indexes in SSMS.

Subqueries are queries that are `embedded` within another query. They can be used to `retrieve data` that will be used in the `main query,` or to `filter` or `aggregate` data before it's returned. There are `four types` of subqueries: 

- single-row
- multi-row
- nested
- correlated. 

Let's go through each one in turn.


## Single-Row Subqueries:
A `single-row subquery` is a query that `returns only one row` of data. It's often used as a `filter to restrict` the results of the `main query.`
## Here's an example:
```sql
SELECT *
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);
```
In this example, the subquery calculates the average salary of all employees, and the main query returns only those employees whose salary is greater than the average.

## Multi-Row Subqueries:
A multi-row subquery is a query that `returns more than one row` of data. It's often used as a `filter` or to provide data for an `IN clause.`
## Here's an example:
```sql
SELECT *
FROM employees
WHERE department_id IN (SELECT department_id FROM departments WHERE location = 'New York');
```
In this example, the subquery returns all department IDs for departments located in New York, and the main query returns all employees who work in those departments.

## Nested Subqueries:
A nested subquery is a query that `contains another subquery.` It's often used to perform `complex filtering` or `aggregation.`
## Here's an example:
```sql
SELECT *
FROM employees
WHERE department_id IN (SELECT department_id
FROM departments
WHERE location = (SELECT location FROM locations WHERE city = 'San Francisco'));
```
In this example, the nested subquery retrieves the location of San Francisco from the locations table, the inner subquery returns all department IDs for departments located in San Francisco, and the main query returns all employees who work in those departments.

## Correlated Subqueries:
A correlated subquery is a query that uses a `value` from the `outer query` in the `subquery.` It's often used to `filter data` based on a `condition` in the `outer query.`
## Here's an example:
```sql
SELECT *
FROM employees e
WHERE salary > (SELECT AVG(salary) FROM employees WHERE department_id = e.department_id);
```
In this example, the correlated subquery calculates the average salary for employees in the same department as the employee in the outer query, and the main query returns only those employees whose salary is greater than the department average.


# Views:
In SQL, views contain `rows` and `columns` similar to a table, however, views `don't hold the actual data.`

![Logo](https://www.programiz.com/sites/tutorial2program/files/sql-view.png)

## Purpose of Views:
A view is a `virtual table` created based on the result set of a `SELECT statement.` Views can be used to 
- Simplify complex queries
- Hide the complexity of underlying tables from end-users, 
- Provide an additional level of security by restricting access to only specific columns of a table.

## Creating, Altering, and Dropping Views:
To create a view, you need to use the `CREATE VIEW` statement followed by the `SELECT statement` that defines the view.
## Here's an example:

```sql
CREATE VIEW us_customers AS
SELECT customer_id, first_name
FROM Customers
WHERE Country = 'USA';
```

Here, a view named `us_customers` is created from the `customers` table.

Now to `select` the customers who lives in `USA,` we can simply run,

```sql
SELECT *
FROM us_customers;
```

## Updating a View:
It's possible to `change or update` an existing view using the `CREATE OR REPLACE VIEW` command. For example,

```sql
CREATE OR REPLACE VIEW us_customers AS
SELECT *
FROM Customers
WHERE Country = 'USA';
```
Here, the `us_customers` view is updated to `show all` the fields.

## Deleting a View:
We can delete views using the `DROP VIEW` command. For example,
```sql
DROP VIEW us_customers;
```

Here, the SQL command deletes the view named `us_customers.`

## Views for Complex Queries:
Suppose `A and B` are `two tables` and we wan't to select data from both of the tables. For that, we have to use `SQL JOINS.`

However using the `JOIN` each time could be a tedious task. For that, we can create a view to fetch records easily.

### Let's create a view:
```sql
CREATE VIEW order_details AS
SELECT Customers.customer_id, Customers.first_name, Orders.amount
FROM Customers
JOIN Orders
ON Customers.customer_id = Orders.customer_id;
```
### Now, to select the data, we can run:
```sql
SELECT *
FROM order_details;
```
Here, the SQL command selects data from the view `order_details.`


# What are indexes?
Indexes are used to `improve` the `performance` of `queries` in `SQL` by allowing the `database` to quickly `locate` the `rows` that match a `certain condition` or `set of conditions`. An index can be `created` on `one or more columns` in a `table`, and it provides a `fast`, `efficient` way to search through the `data`.

There are `two main types` of indexes in SQL: 

- Clustered 
- Non-clustered
## Clustered Index:
A clustered index determines the `physical` order of the data in a table. When you create a clustered index on a table, the data is `stored` in the order `specified by the index.` Each table can have only `one clustered index.`

### Here's an example of how to create a clustered index:
```sql
CREATE CLUSTERED INDEX idx_orders_orderdate
ON orders (orderdate);
```

In this example, we're creating a clustered index called `idx_orders_orderdate` on the `orderdate` column in the `orders` table.

## Nonclustered Index:
A nonclustered index is a `separate structure` from the data in the table. It contains a `copy` of the `indexed columns` and a `pointer to the location` of the `corresponding row(s) `in the `table`. Each table can have `multiple` nonclustered indexes.

### Here's an example of how to create a nonclustered index:

```sql
CREATE NONCLUSTERED INDEX idx_orders_customerid
ON orders (customerid);
```
In this example, we're creating a nonclustered index called `idx_orders_customerid` on the `customerid` column in the orders `table`.

## Creating, Altering, and Dropping Indexes:
To create an index in SQL, you can use the `CREATE INDEX `statement followed by the `index name,` the `table name,` and the `columns` you want to index:

```sql
CREATE INDEX index_name
ON table_name (column1, column2, ...);
```
To `alter` an existing index, you can use the `ALTER INDEX` statement:

```sql
ALTER INDEX index_name
ON table_name
REBUILD;
```
This statement will `rebuild` the index, which can be useful if you've made changes to the data in the table that have affected the index.

To `drop` an index, you can use the `DROP INDEX`statement:
```sql
DROP INDEX index_name
ON table_name;
```
This statement will remove the index from the table.

## Using Indexes:
Once you've created an index on a table, you can use it in queries to improve performance. Here's an example of how to use an index in a `SELECT` statement:
```sql
SELECT *
FROM orders
WHERE customerid = 'ALFKI';
```
Assuming that there is an index on the `customerid` column in the `orders` table, this query will use the index to quickly find all rows where the `customerid` is `ALFKI`.


