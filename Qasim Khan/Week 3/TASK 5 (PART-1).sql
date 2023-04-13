USE HR_SAMPLE_DATABASE

/* In SQL a Subquery can be simply defined as a query within another query. 
In other words we can say that a Subquery is a query that is embedded in WHERE clause of another SQL query

You can place the Subquery in a number of SQL clauses: WHERE clause, HAVING clause, FROM clause. 
Subqueries can be used with SELECT, UPDATE, INSERT, DELETE statements along with expression operator. 
It could be equality operator or comparison operator such as =, >, =, <= and Like operator.
A subquery is a query within another query. The outer query is called as main query and inner query is called as subquery.
The subquery generally executes first when the subquery doesn’t have any co-relation with the main query,
when there is a co-relation the parser takes the decision on the fly on which query to execute on precedence and uses the output of the subquery accordingly.
Subquery must be enclosed in parentheses.
Subqueries are on the right side of the comparison operator.
ORDER BY command cannot be used in a Subquery. GROUPBY command can be used to perform same function as ORDER BY command.
Use single-row operators with singlerow Subqueries. Use multiple-row operators with multiple-row Subqueries.
*/


SELECT * FROM employees
SELECT * FROM departments


--SINGLE ROW SUBQUERY:
--Its always return 1 row and 1 column

--you have to find all employees who locate in the location with the id 1700.

SELECT employee_id,first_name,last_name FROM employees
WHERE department_id IN (SELECT department_id FROM departments
                        WHERE location_id=1700)


-- find all employees who do not locate at the location 1700:

SELECT * FROM employees
WHERE department_id NOT IN (SELECT department_id FROM departments
                            WHERE location_id = 1700)


--find the employees whos salary is more than average salary of all employee

SELECT employee_id,first_name,last_name,salary
FROM employees
WHERE salary >(SELECT AVG(salary) FROM employees)

--MULTIPLE ROW SUB-QUERY
--TWO TYPES

-- 1.Subquery which returns multiple rows and single column
-- 2.Subquery which returns multiple rows and columns

--Find department who do not have any employees

SELECT *
FROM departments
WHERE department_id NOT IN (SELECT DISTINCT department_id FROM employees)


/*CORRELATED SUBQUERY
A subquery which is related to outer query
A correlated subquery is also known as a repeating subquery or a synchronized subquery.
*/

--finds all employees whose salary is higher than the average salary of the employees in their departments:

SELECT * 
FROM employees e1
WHERE salary > (SELECT AVG(salary)
                FROM employees e2
				WHERE e2.department_id = e1.department_id)


/* NESTED SUBQUERY
A subquery can be nested inside other subqueries. SQL has an ability to nest queries within one another.
A subquery is a SELECT statement that is nested within another SELECT statement and which return intermediate results.
SQL executes innermost subquery first, then next level.
*/

