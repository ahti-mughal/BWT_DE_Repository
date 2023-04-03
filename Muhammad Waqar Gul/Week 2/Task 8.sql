use northwind;

-- insert many values using single insert statement
insert into students (student_id,first_name,last_name,age,student_address,class,school_id) 
values
(1,'ABC','DEF',12,'KHI',8,2),
(2,'ff','fgr',11,'ISB',8,1),
(3,'pack','qwerty',13,'LHR',4,1);

--delete all rows that have certain value
delete from students where student_address='LHR';

--delete all rows that have certain value in 2 columns
delete from students where school_id=1 and class='8';

--update multiple columns using update statement
update Customers set City='WA' , Region='USA' where ContactName LIKE 'A%';