--Table Creation using Identity
create table course_db(
course_id int not null primary key Identity(1, 1),
course_instructor varchar(25),
course_name varchar(10) CHECK (course_name NOT LIKE '%[^a-zA-Z]%'),
);

--Insert Values in the Identity table
insert into course_db([course_instructor], [course_name]) values ('Ahtisham', 'DE');
insert into course_db([course_instructor], [course_name]) values ('Zubair', 'Flutter');
insert into course_db([course_instructor], [course_name]) values ('Harris', 'Azure');

--Creating a table from another table
SELECT *
INTO courses
FROM course_db;

--Inserting rows from one table to another
insert into courses([course_instructor], [course_name])
select [course_instructor], [course_name]
from course_db;

--Update
update courses set course_name = 'Azure Cloud' where course_id = 3;

--Delete will remove one or more records also it will rollback
delete from courses where course_id = 3;

--Truncate will delete all records in a table also it will not rollback
Truncate table courses;

select * from courses;