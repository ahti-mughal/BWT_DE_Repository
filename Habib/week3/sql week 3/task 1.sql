use HabibDB
-- Select
select * from Employee
-- Where clause
select * from Employee where Salary>15000
-- Order by clause  Ascending Order
select * from Employee order by Salary ASC
select * from Employee order by City ASC
select * from Employee order by EmpName ASC
-- Order by clause Descending Order
select * from Employee order by Salary DESC
select * from Employee order by City DESC
select * from Employee order by EmpName DESC
-- Distinct Keyword
select distinct salary from Employee
-- ISNULL Function
insert into Employee values (5, 'khan', 'sukkur', null),(6, 'zaki', 'multan', 23500),(7, 'shaheer', 'hyderabad', null)
select isnull(salary , 11500)salary from Employee
-- Column Alias
select city as EmpCity from Employee
-- Between ... And
select * from Employee where Salary between 5500 and 23500 order by Salary ASC
-- In
select * from Employee where City in ('multan', 'hyderabad') 
-- Like
select * from Employee where EmpName like 'z%'
select * from Employee where EmpName like 'a%'
select * from Employee where EmpName like '%i'
-- Is null
select * from Employee where Salary is null
select * from Employee where Salary is not null
select Empname, City from Employee where Salary is null
select Empname, City from Employee where Salary is not null

