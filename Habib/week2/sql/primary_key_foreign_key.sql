CREATE DATABASE HabibDB
CREATE TABLE Employee (
ID int NOT NULL PRIMARY KEY,
EmpName nvarchar(255) NOT NULL,
City nvarchar(255),
Salary int
)

insert INTO Employee(ID,EmpName,City,Salary) values ('1', 'Ali','karachi','7000')
insert INTO Employee(ID,EmpName,City,Salary) values ('2', 'Ahmed','Lahore','8000')
insert INTO Employee(ID,EmpName,City,Salary) values ('3', 'Ahsan','Hyderabad','9000')
insert INTO Employee(ID,EmpName,City,Salary) values ('4', 'Usman','Pindi','19000')
select * from Employee 

CREATE TABLE Department (
DepID nvarchar(90) NOT NULL PRIMARY KEY,
DepName nvarchar(255) NOT NULL,
EmpID int FOREIGN KEY REFERENCES Employee(ID)
)
insert INTO Department Values ('001','Marketing',2)
insert INTO Department Values ('002','Technical',3)
insert INTO Department Values ('003','Logistics',1)
select * from Employee 
select * from Department