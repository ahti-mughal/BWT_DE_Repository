/* 24/March/2023 Task # 7*/

use dbDE_Practice

Create Table tblEmployee
(
Emp_ID int identity(1,1) primary key not null,
Emp_Name Varchar(50),
Emp_Contact int
)

Select * From tblEmployee


/* Create Table From another table*/
Select * into tblEmployee_Copy From tblEmployee


select * from tblEmployee_Copy


/*Insert Rows int table*/
Insert into tblEmployee(Emp_Name,Emp_Contact)Values('Meer Danish', 03232323)

/* Insert Record From One Table To Another Table*/
Insert into tblEmployee_Copy(Emp_Name,Emp_Contact)
Select Emp_Name,Emp_Contact from tblEmployee;

/* Update Record */
Update tblEmployee set Emp_Name='Meer_Danish_229' where Emp_ID=5

/*
                                       Difference Between Truncate And Delete
DELETE and TRUNCATE are SQL statements used to remove data from a table. However, there are significant differences between the two statements in terms of how they work and what their effects are.

Operation:
DELETE statement removes individual rows from the table based on a specified condition in the WHERE clause, whereas TRUNCATE statement deletes all rows from the table at once.

Speed:
TRUNCATE is faster than DELETE because it is a one-time operation, whereas DELETE needs to execute for each row that needs to be removed.

Log:
TRUNCATE does not log individual row deletions, whereas DELETE logs each row deletion, which can fill up the transaction log and cause performance issues.

Auto-increment ID:
TRUNCATE resets the identity column to its original seed value (usually 1), whereas DELETE does not reset the identity column.

Recovery:
TRUNCATE cannot be rolled back, whereas DELETE can be rolled back if it is executed within a transaction.

Dependencies:
TRUNCATE drops and recreates the table, which can have implications for foreign keys, triggers, and other dependencies, whereas DELETE does not affect the table structure or any dependencies.

Permissions:
TRUNCATE requires the ALTER permission on the table, whereas DELETE requires the DELETE permission on the table.

In summary, DELETE is used to selectively remove rows from a table, whereas TRUNCATE is used to quickly remove all the rows from a table. If you need to remove all the data from a table and reset the identity column, TRUNCATE is a better option. If you need to remove specific rows from a table, or if you need to maintain the table structure and any dependencies, DELETE is the better option.
*/

/*Truncate table means Delete All Record At Once Time Using Truncate */
Truncate table tblEmployee