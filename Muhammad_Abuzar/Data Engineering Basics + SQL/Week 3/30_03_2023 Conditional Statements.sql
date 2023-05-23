--Case Statement
-- Case statement to categorize employees based on their salaries

SELECT 
    EmployeeName, 
    Salary, 
    CASE 
        WHEN Salary >= 50000 AND Salary < 100000 THEN 'Intermediate'
        WHEN Salary >= 100000 THEN 'Senior'
        ELSE 'Junior'
    END AS 'Category'
FROM 
    Employee



--If statement
-- If statement to check if an employee's salary is greater than a certain amount

DECLARE @EmployeeSalary INT = 80000

IF @EmployeeSalary > 100000
BEGIN
    PRINT 'This employee is a senior employee.'
END
ELSE
BEGIN
    PRINT 'This employee is either a junior or intermediate employee.'
END
