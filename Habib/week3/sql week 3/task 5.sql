use HabibDB
select * from Emp_Salary
select * from EmployeeN
-- Sub Query
select emp_name, salary from Emp_Salary 
where Emp_name in 
(select emp_name from Emp_Salary where salary > 50000)
-- update command using sub query
update Emp_Salary set salary = salary + 2000 where city in (select city from Emp_Salary where city = 'multan')
--or
update Emp_Salary set salary = salary + 2000 where id_no in (select id_no from Emp_Salary where city ='karachi')
-- -- delete command using sub query
delete from Emp_Salary
where emp_name in (select emp_name from Emp_Salary where emp_name = 'sara')
-- Join 
select * from Emp_Salary
where id_no in (select id from EmployeeN where city in ('karachi'))

select * from Emp_Salary as T1
inner join EmployeeN as T2
on (T1.city = T2.City)

-- View
create view VW_EmpDetails
as
select * from Emp_Salary
where id_no in (select id from EmployeeN where city in ('karachi'))

select * from VW_EmpDetails

sp_helptext VW_EmpDetails

-- insert
create view vW_forempsal
as 
select * from Emp_Salary

select * from vW_forempsal

insert into vW_forempsal values (6, 'areeb', 'male', 'multan', 54000)
update vW_forempsal set emp_name = 'aftab' where id_no = 6
delete from vW_forempsal where id_no = 6