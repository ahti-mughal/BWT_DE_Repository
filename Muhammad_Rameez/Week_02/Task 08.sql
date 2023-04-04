-- Write an SQL query to insert multiple rows
--  into a table using a single INSERT statement.


Insert into MobileApp (id, name, no_of_mobile_app_created, updates)
values (13, 'Taimoor', 2, 3),
(6, 'Mirza', 1, 3),
(7, 'Talal', 5, 3),
(8, 'Danish', 6, 3),
(9, 'Sameer', 3, 3),
(10, 'Faiz', 1, 2),
(11, 'Lareeb', 4, 2),
(12, 'Saif', 1, 1)
;

SELECT * from MobileApp;

-- Write an SQL query to delete all the rows 
--  from a table that have a certain value in a column


Delete from MobileApp where name = 'Mirza';

Delete from MobileApp where name = 'Faiz';

SELECT * from MobileApp;

-- Write an SQL query to delete all the rows from a table that
-- have a certain value in a column, and that meet a certain condition
--  in another column.


Delete from MobileApp where no_of_mobile_app_created > 2 and updates = 2;


-- Write an SQL query to update multiple columns in a table
--  based on a condition using the UPDATE statement.

Update Toppers set no_of_Assignment_completed = 5, grade = 'A++'
where grade = 'A+'



select * from Toppers;


