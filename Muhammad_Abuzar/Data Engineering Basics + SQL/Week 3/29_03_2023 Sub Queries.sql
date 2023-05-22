--Subqueries: Subqueries are SQL queries that are nested inside another query. They are also known as nested queries or subselects. Subqueries can be used in various
--ways to perform different tasks. Here are the four types of subqueries:

--a)Single Row Subqueries:
--Single-row subqueries are subqueries that return only one row of the result set. They can be used in SELECT, WHERE, HAVING, and UPDATE statements. 
--Here is an example of a single-row subquery that returns the employee's first name and the salary of the employee whose salary
--is the highest in the employee table:
SELECT FirstName, Salary
FROM Employee
WHERE Salary = (SELECT MAX(Salary) FROM Employee);


--b) Multi Row Subqueries:
--Multi-row subqueries are subqueries that return multiple rows of the result set. They can be used in SELECT, WHERE, HAVING, and UPDATE
--statements. Here is an example of a multi-row subquery that returns the product names and the prices of the products that have a price lower than the
--average price of all products:
SELECT ProductName, UnitPrice
FROM Products
WHERE UnitPrice < (SELECT AVG(UnitPrice) FROM Products);


--c) Nested Subqueries:
--Nested subqueries are subqueries that are used inside another subquery. They can be used in SELECT, WHERE, HAVING, and UPDATE statements.
--Here is an example of a nested subquery that returns the employee's first name and the department name of the department in which the employee works:
SELECT FirstName, DepartmentName
FROM Employee
WHERE DepartmentID = (SELECT DepartmentID FROM Department
                      WHERE DepartmentName = 'Marketing');


--d) Co-Related Subqueries:
--Co-related subqueries are subqueries that depend on the outer query for their results. They can be used in SELECT, WHERE, HAVING, and UPDATE statements.
--Here is an example of a co-related subquery that returns the employee's first name and the salary of the employees
--whose salary is higher than the salary of their managers:
SELECT FirstName, Salary
FROM Employee e
WHERE Salary > (SELECT Salary FROM Employee
                WHERE EmployeeID = e.ManagerID);
