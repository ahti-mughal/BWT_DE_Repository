use HabibDB
select * from Employee

-- updating a single row value

update Employee set Salary = '9500' where EmpName= 'Ali' OR ID = '1'

-- updating multiple records

update Employee set EmpName = 'Ashar', City = 'Faislabad' where ID = '1'
