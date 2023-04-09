--Write an SQL query to insert multiple rows into a table using a single INSERT statement
Insert into course(course_instructor, course_name) 
values('Abdul Hadi', 'Laravel'), 
	  ('Mohsin Khan', 'UIDesign'),
	  ('Muhammad Bilal', 'DeepLearning');

--Write an SQL query to delete all the rows from a table that have a certain value in a column.
delete from fellows where course_id=2;

--Write an SQL query to delete all the rows from a table that have a certain value in a column, and that meet a certain condition in another column
delete from fellows where course_id=1 and fellow_location='ISB';

--Write an SQL query to update multiple columns in a table based on a condition using the UPDATE statement.
update fellows set fellow_name='UsmanKhan', fellow_location='LHR' where course_id=3;

select * from fellows;