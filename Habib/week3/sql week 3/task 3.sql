use HabibDB
-- Inner Join
select * from EmployeeN
select * from Manager
select * from EmployeeN as EN
inner join Manager as M
on EN.ID = M.ID
select EN.EmpName, EN.Salary from EmployeeN as EN
inner join Manager as M
on EN.ID = M.ID

-- Natural Join
select EmployeeN.EmpName from EmployeeN, Manager where EmployeeN.ID = Manager.ID

-- Outer Join
select * from Employee
select * from Manager
-- Left Outer Join
select Employee.ID,Employee.empname,Employee.city, Employee.salary from Employee 
left outer join Manager
on (Employee.ID = Manager.ID)
-- Right Outer Join
select Employee.ID,Employee.empname,Employee.city, Employee.salary from Employee 
right outer join Manager
on (Employee.ID = Manager.ID)
-- Full Outer Join
select Employee.ID,Employee.empname,Employee.city, Employee.salary from Employee 
full outer join Manager
on (Employee.ID = Manager.ID)

-- Self Join
-- Example 1
create table STUDENTS1 (S_ID nvarchar(4), C_id nvarchar(4), duration int) 
insert into STUDENTS1 values('s1' ,'c1', 2016),('s2', 'c2', 2017),('s1', 'c2', 2017)
select * from STUDENTS1
--Method 1
select T1.S_ID from STUDENTS1 as T1, 
STUDENTS1 as T2 where T1.S_ID = T2.S_ID and T1.C_id <> T2.C_id
--Method 2
select SA.S_ID from STUDENTS1 as SA
inner join STUDENTS1 as SB on (SA.S_ID = SB.S_ID and SA.C_id <> SB.C_id)
-- Example 2
create table Emp_Man (Emp_ID int,Emp_name nvarchar (23), C_id int) 
insert into Emp_Man values(1, 'ali', 4),(2, 'amir', 4),(3, 'anas', 5),(4, 'hamza', 6),(5, 'asghar', 1),(6, 'nasir',1)
select * from Emp_Man
--Method 1
select A.Emp_name as Employee, B.Emp_name as Manager from Emp_Man as A, Emp_Man as B where A.C_id = B.Emp_id
--Method 2
select A.Emp_name as Employee, 
B.Emp_name as Manager
from Emp_Man as A
inner join Emp_Man as B on (A.C_id = B.Emp_id)

-- Cross Join
select * from EmployeeN Cross join Manager

-- Left anti-join
