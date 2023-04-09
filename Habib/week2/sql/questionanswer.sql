-- 1 - Write an SQL query to insert multiple rows into a table using a single INSERT statement.
use HabibDB
select * from Employee

insert into Employee values ('1','Sajid','karachi','8000'),('2','Majid','Karchi','16000'),('3','Aslam','Lahore','5500'),('4','Ahsan','Pindi','34000')

-- 2 - Write an SQL query to delete all the rows from a table that have a certain value in a column.
delete from Employee where City = 'karachi'

-- 3 - Write an SQL query to delete all the rows from a table that have a certain value in a column, and that meet a certain condition in another column.
-- 4 - Write an SQL query to update multiple columns in a table based on a condition using the UPDATE statement.
update Employee set City = 'karachi' , Empname= 'majid' where ID= 2