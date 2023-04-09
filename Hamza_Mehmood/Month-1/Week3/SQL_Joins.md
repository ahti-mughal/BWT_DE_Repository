# Master the Art of SQL Joins: Unlocking the Power of Relational Databases:

SQL joins are a fundamental concept for database management, allowing you to combine data from `different` tables into a `single comprehensive result set.`

A `JOIN` clause is used to combine `rows` from `two or more` tables, based on a `related column` between them.

### Example:
```sql
SELECT Customers.customer_id, Customers.first_name, Orders.amount
FROM Customers
JOIN Orders
ON Customers.customer_id = Orders.customer;
```
### Here's how this code works:

![Logo](https://www.programiz.com/sites/tutorial2program/files/join-in-sql.png)

### Explanation:
Here, the `SQL command` selects `customer_id` and `first_name` columns (from the Customers table) and the `amount` column (from the Orders table).

And, the result set will contain `those rows` where there is a `match` between `customer_id` (of the Customers table) and `customer` (of the Orders table).

## SQL JOIN and Aliases:
We can use `AS` aliases with `table` names to make our snippet short and clean. `For example,`

```sql
SELECT C.customer_id, C.first_name, O.amount
FROM Customers AS C
JOIN Orders AS O
ON C.customer_id = O.customer;
```

Also, we can change the `column names temporarily` using `AS` aliases. `For example,`
```sql
SELECT C.customer_id AS cid, C.first_name AS name, O.amount
FROM Customers AS C
JOIN Orders AS O
ON C.customer_id = O.customer;
```

## Types of SQL JOINs
The `JOIN` command we performed earlier is INNER JOIN. There are mainly `SIX` types of joins.

- INNER JOIN 
- LEFT OUTER JOIN
- RIGHT OUTER JOIN
- FULL OUTER JOIN
- SELF JOIN
- CROSS JOIN

## SQL INNER JOIN:
The SQL `INNER` JOIN joins two tables based on a `common column` and selects records that have `matching values` in these columns.

### Example
```sql
SELECT Customers.customer_id, Customers.first_name, Orders.amount
FROM Customers
INNER JOIN Orders
ON Customers.customer_id = Orders.customer;
```
### Here's how this code works:

![Logo](https://www.programiz.com/sites/tutorial2program/files/inner-join-in-sql.png)

## SQL LEFT JOIN:
The SQL `LEFT JOIN` joins two tables based on a `common column,` and selects records that have `matching values` in these columns and `remaining rows` from the `left table.`

### Example
```sql
SELECT Customers.customer_id, Customers.first_name, Orders.amount
FROM Customers
LEFT JOIN Orders
ON Customers.customer_id = Orders.customer;
```

### Here's how this code works:
![Logo](https://www.programiz.com/sites/tutorial2program/files/left-join-in-sql.png)

## SQL RIGHT JOIN:
The `SQL RIGHT` JOIN joins two tables based on a `common column,` and selects records that have `matching values` in these columns and `remaining rows` from the `right table.`

### Example
```sql
SELECT Customers.customer_id, Customers.first_name, Orders.amount
FROM Customers
RIGHT JOIN Orders
ON Customers.customer_id = Orders.customer;
```
### Here's how this code works:
![Logo](https://www.programiz.com/sites/tutorial2program/files/right-join-in-sql.png)

## FULL OUTER JOIN:
The SQL `FULL OUTER` JOIN joins two tables based on a `common column,` and selects records that have `matching values` in these columns and `remaining rows` from `both of the tables.`

### Example:
```sql
SELECT Customers.customer_id, Customers.first_name, Orders.amount
FROM Customers
FULL OUTER JOIN Orders
ON Customers.customer_id = Orders.customer;
```
### Here's how this code works:
![Logo](https://www.programiz.com/sites/tutorial2program/files/sql-full-outer-join.png)


## SELF JOIN:

### Consider this table below:
![Logo](https://media.geeksforgeeks.org/wp-content/cdn-uploads/table2.jpg)


In `SELF JOIN` a table is joined to `itself.` That is, `each row` of the table is joined with `itself` and all `other rows` depending on some `conditions.` 
### Example:
```sql
SELECT a.ROLL_NO , b.NAME
FROM Student a, Student b
WHERE a.ROLL_NO < b.ROLL_NO;
```
![Logo](https://media.geeksforgeeks.org/wp-content/uploads/tableeee1.png)

## CROSS JOIN:
In a `CROSS JOIN` there is a join for `each row` of `one table` to `every row` of `another table.` This usually happens when the matching column or WHERE condition is not specified.
In the presence of `WHERE condition` this `JOIN` will function like a `INNER JOIN.`
### Consider the two tables below:
![Logo](https://media.geeksforgeeks.org/wp-content/cdn-uploads/table2.jpg)
![Logo](https://media.geeksforgeeks.org/wp-content/uploads/table51.png)
```SQL
SELECT Student.NAME, Student.AGE, StudentCourse.COURSE_ID
FROM Student
CROSS JOIN StudentCourse;
```
### OUTPUT:
![Logo](https://media.geeksforgeeks.org/wp-content/uploads/table_final.png)

