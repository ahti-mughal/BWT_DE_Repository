# Defining Constraints in SQL

Here's a `step-by-step` procedure you can follow to practice `SQL constraints` in SSMS efficiently:

### Step 1:
Create a new `database` in SSMS or use an existing one that you have access to.
### Step 2:
Create a new `table` with `columns` that you want to apply constraints to. For example, let's say you want to create a table named `"Employees"` with columns such as `"EmployeeID,"` `"FirstName,"` `"LastName,"` `"Email,"` `"PhoneNumber,"` and `"DepartmentID."`

Add constraints to your table using `SQL syntax.` Start with the basic constraints such as:
- NOT NULL
- UNIQUE
- DEFAULT 
- CHECK constraints. 
### For example:

- To add a `"NOT NULL"` constraint to the `"EmployeeID"` column, you can use the following `SQL command:`

```sql
ALTER TABLE Employees
ALTER COLUMN EmployeeID INT NOT NULL
````

- To add a `"UNIQUE"` constraint to the `"Email"` column, you can use the following `SQL command:`
```sql
ALTER TABLE Employees
ADD CONSTRAINT UC_Email UNIQUE (Email)
````
- To add a `"DEFAULT"` constraint to the `"PhoneNumber"` column, you can use the following `SQL command:`
```sql
ALTER TABLE Employees
ADD CONSTRAINT DF_PhoneNumber DEFAULT 'N/A' FOR PhoneNumber
````
- To add a `"CHECK"` constraint to the `"DepartmentID"` column, you can use the following `SQL command:`
```sql
ALTER TABLE Employees
ADD CONSTRAINT CK_DepartmentID CHECK (DepartmentID > 0)
````
## Step 3:
Next, add `primary key` and referential integrity or `foreign key` constraints to your table.
 For example:
- To add a `primary key` constraint to the `"EmployeeID"` column, you can use the following SQL command:
```sql
ALTER TABLE Employees
ADD CONSTRAINT PK_Employees PRIMARY KEY (EmployeeID)
````

- To add a `foreign key` constraint to the `"DepartmentID"` column that references the `"Departments"` table, you can use the following SQL command:
```sql
ALTER TABLE Employees
ADD CONSTRAINT FK_DepartmentID FOREIGN KEY (DepartmentID)
REFERENCES Departments(DepartmentID)
````
## Step 4:
Insert some data into your table and test the constraints. Try to insert data that violates the constraints and see how SQL Server responds.
