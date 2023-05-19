# Conditional Control statements:

These are `programming constructs` that allow you to control the flow of your SQL code based on certain conditions. Two commonly used conditional control statements in SQL are `CASE` and `IF`.

## CASE statement:
The CASE statement is used to `perform conditional logic` in SQL. It allows you to `evaluate` a `set of conditions` and `return a value` based on the `first condition` that is `true`. The syntax for a simple `CASE` statement is as follows:

```sql
CASE expression
    WHEN value1 THEN result1
    WHEN value2 THEN result2
    ...
    ELSE default_result
END
```
### Here's an example of how you can use a simple CASE statement in SQL:

```sql
SELECT name, 
       age, 
       CASE 
           WHEN age >= 18 THEN 'Adult' 
           ELSE 'Minor' 
       END AS age_group 
FROM users;
```
In this example, we're selecting the `name` and `age` columns from the `users table,` and we're adding a new column called `age_group`. The `age_group` column uses a simple `CASE` statement to evaluate the age of each user and return either "`Adult`" or "`Minor`" based on whether they are over `18` or `not`.

## IF statement:
The IF statement is used to perform conditional logic in SQL. It allows you to execute a `block of code` if a certain condition is `true`, and another block of code if the condition is `false`. The syntax for an IF statement is as follows:

```sql
IF condition THEN
    -- code to execute if the condition is true
ELSE
    -- code to execute if the condition is false
END IF;
```
Here's an example of how you can use an IF statement in SQL:
```sql
DECLARE @age INT;
SET @age = 25;

IF @age >= 18 THEN
    PRINT 'This person is an adult.';
ELSE
    PRINT 'This person is a minor.';
END IF;
```
In this example, we're `declaring` a variable called @`age` and setting its value to `25`. We're then using an `IF` statement to check if @`age` is `greater` than or `equal` to `18`. If it is, we print "`This person is an adult`." If it's not, we print "`This person is a minor`."
