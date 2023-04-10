/* Using My created Database*/
use New_Nadeem420

--1  Created a Table */
CREATE TABLE Employes (
  emp_id INT NOT NULL PRIMARY KEY,
    first_name VARCHAR(50) ,
    last_name VARCHAR(50)  ,
    email VARCHAR(100) UNIQUE,
    salary DECIMAL(10, 2) CHECK (salary >= 0),
);
drop table Employes

--See the created table 
select*from Employes

/* Insert the data into table*/
insert into Employes(emp_id,first_name,last_name,email,salary)
values (1,'Aliya_1', 'Usman_1', 'abcdgg', 5002), (2,'Aliza', 'Usman', 'abcgh', 5002),(3, 'Ali', 'baba','dgfs',400)

--2 Creating a table from another table
select * into New_empl from Employes

--3-Inserting rows from one table to anothe
INSERT INTO New_empl (emp_id,first_name)
SELECT emp_id,first_name  FROM Employes;

select*from New_empl

--UPDATE
Update Employes
set salary=15000
where first_name='Aliya_1'

select*from Employes

/*3-- DELETE:
     ? Truncate
     ? Difference between delete & truncate
	                                            Difference
	 DELETE is a DML (Data Manipulation Language) command used to remove one or more rows from a table based on a condition. 
	 When you use the DELETE command, you can specify a WHERE clause to indicate which rows to delete
	 .This command deletes data row by row and can be rolled back (using transactions) if necessary.

	 TRUNCATE is a DDL (Data Definition Language) command used to remove all rows from a table. 
	 It essentially empties the table of its data and resets any auto-incrementing columns to their starting values. 
	 TRUNCATE does not use a WHERE clause, as it removes all rows from the table. TRUNCATE also cannot be rolled back once it is executed.*/

--Delete 
Delete FROM Employes
where emp_id=1 -- WILL DELETE ONLY emp_id rows

select*from Employes

--Truncate 
Truncate Table Employes  -- will delete all the rows in table

select*from Employes

