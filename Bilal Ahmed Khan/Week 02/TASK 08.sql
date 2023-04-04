-- Write an SQL query to insert multiple rows into a table using a single INSERT statement.
select * into newCategories from Categories
select * from newCategories

set IDENTITY_INSERT newCategories ON;


insert into newCategories (CategoryID, CategoryName, Description, Picture)
values 
(9,'Fast Food','Burger, Pizza, Rolls etc','0xsdfsfhsf234234q2sdfsd'),
(10,'Savory','Nimco, chips, biscuits etc','0xw234123dssfwadfsaf')

set IDENTITY_INSERT newCategories OFF;

-- Write an SQL query to delete all the rows from a table that have a certain value in a column.

delete from newCategories where CategoryID=9 

-- Write an SQL query to delete all the rows from a table that have a certain value in a column, and that meet a certain condition in another column.

delete from newCategories where CategoryName='Savory' and CategoryID>5
GO

-- Write an SQL query to update multiple columns in a table based on a condition using the UPDATE statement.

update newCategories set Picture='0xABC' where CategoryID>5
GO

select * from newCategories

drop table newCategories