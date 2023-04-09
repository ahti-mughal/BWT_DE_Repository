/* 24/March/2023 Task # 8 */

/* Write an SQL query to insert multiple rows into a table using a single INSERT statement. */

Insert into tblEmployee(Emp_Name,Emp_Contact)Values
('Meer Danish',033432234),
('Usman Malik',033432234),
('Ziya Ur Rehman',033432234),
('Adeel',033432234),
('Asad',033432234)

/* Write an SQL query to delete all the rows from a table that have a certain value in a column. */

Delete from tblEmployee where Emp_Contact=033432234

/*Now we Add Column In Table Emp_Age*/
Alter table tblEmployee
Add  Emp_Age int

select * from tblEmployee

Insert into tblEmployee(Emp_Name,Emp_Contact,Emp_Age)Values
('Meer Danish',033432234,34),
('Usman Malik',033432234,45),
('Ziya Ur Rehman',033432234,55),
('Adeel',033432234,55),
('Asad',033432234,55)

/* Write an SQL query to delete all the rows from a table that have a certain value in a column, and that meet a certain condition in another column. */
Delete from tblEmployee
where Emp_Contact=033432234
AND Emp_Age >= 55

/* Write an SQL query to update multiple columns in a table based on a condition using the UPDATE statement. */
Update tblEmployee 
Set Emp_Name = Emp_Name+'_Bytewise' , Emp_Age= 45
where Emp_Age > 30

