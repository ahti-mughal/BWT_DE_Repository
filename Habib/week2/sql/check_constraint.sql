CREATE TABLE Manager (
ID int NOT NULL PRIMARY KEY,
EmpName nvarchar(255) NOT NULL,
City nvarchar(255),
Salary int CHECK (Salary < 10000)
)

insert INTO Manager(ID,EmpName,City,Salary) values ('1', 'Ali','karachi','7000')
insert INTO Manager(ID,EmpName,City,Salary) values ('2', 'Ahmed','Lahore','8000')
insert INTO Manager(ID,EmpName,City,Salary) values ('3', 'Ahsan','Hyderabad','9000')
insert INTO Manager(ID,EmpName,City,Salary) values ('4', 'Usman','Pindi','19000')
select * from Manager 