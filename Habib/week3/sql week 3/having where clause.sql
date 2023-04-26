use HabibDB
create table Emp_Salary (id_no int, emp_name nvarchar (255), gender nvarchar(10), city nvarchar(10), salary int)
insert into Emp_Salary values (1, 'asif', 'male', 'karachi', 25000),
(2, 'hammad', 'male', 'karachi', 45000),
(3, 'ahsan', 'male' , 'islamabad', 65000),
(4, 'danish', 'male', 'multan', 76000),
(5, 'alia', 'female', 'islamabad', 35000),
(6, 'sara', 'female', ' multan', 23000)

-- Group By
select gender,city , count(gender) as count from Emp_Salary group by gender , city

-- Having Clause
select city, sum(salary) from Emp_Salary
group by city 
having city in ('islamabad', 'multan', 'karachi')

-- Group By with Where clause
select city, sum(salary) from Emp_Salary
where city in ('islamabad', 'multan', 'karachi')
group by city 

-- Having and Where clause
select city, sum(salary) from Emp_Salary
where city in ('islamabad')
group by city 
having sum(salary) >5000