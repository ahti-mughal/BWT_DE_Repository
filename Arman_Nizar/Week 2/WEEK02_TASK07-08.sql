--------------------------------------------------TASK_7-------------------------------------------------

create table employee(
id int identity primary key,
ename varchar(50) not null,
email varchar(50) unique,
age int
);

insert into employee (ename,email,age) 
values('arman','armannizar31@gmail.com',21),
('a','a1@gmail.com',2),
('nizar','nizar31@gmail.com',20)

select * into employee_new from employee
select * from employee_new
select * from employee

insert into employee_new(ename,email,age) select ename,email,age from employee where age <5;
update employee_new set ename='ali' where age <5;
update employee_new set ename='aliaman' where id=2;
delete from employee_new where id =4;
DELETE FROM employee_new;
truncate table employee_new
drop table employee_new

/*Note that the main difference between DELETE and TRUNCATE is that DELETE removes rows one by one,
while TRUNCATE removes all rows at once and also resets any identity columns to their initial values.
It's important to be cautious when using DELETE or TRUNCATE, 
as they can delete data permanently and irreversibly.

DELETE can be rolled back using the ROLLBACK statement, 
which means that the deleted rows can be restored if needed. 
TRUNCATE, on the other hand, cannot be rolled back once it has been executed,
and the data removed from the table is gone permanently.
*/

--------------------------------------------------TASK 8------------------------------------------
insert into employee_new (ename,email,age) values
('arman123','armannizar31@gmail.com',21),
('a12','a1@gmail.com',2),
('nizar12','nizar31@gmail.com',20)
select * from employee_new

delete from employee_new where age>20

delete from employee_new where age>20 and ename='arman1'

update employee_new 
set ename='zain' 
where id between 15 and 20;
