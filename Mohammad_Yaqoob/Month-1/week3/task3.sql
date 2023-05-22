--1 
select P_Name,C_Name
from Product as P
inner join Categorie as C
on P.C_ID = C.C_ID

--2 
select P_Name,C_Name
from Product as P
inner join Categorie as C
using (C_ID) ;

--3
select  OD.P_ID,O.S_Region 
from Order as O
left join [Order Details] as OD
on O.O_ID = OD.O_ID

--4
select  OD.P_ID,O.S_Region 
from Order as O
right join [Order Details] as OD
on O.O_ID = OD.O_ID

--5
select  E.Region,O.S_Region 
from Order as O
full outer join Employee as E
on O.Emp_ID = E.Emp_ID

--6
select OD.P_ID,O.S_Name from Order as O
left join [Order Details] as OD
on O.O_ID = OD.O_ID
where O.ShipPostalCode is null

--7
select OD.P_ID,O.S_Name from Order as O
right join [Order Details] as OD
on O.O_ID = OD.O_ID
where O.ShipPostalCode is null


--8
select Employee.Emp_ID, Emp_Territories.Ter_ID
from Employee
CROSS JOIN EmployeeTerritories;


--9
select e1.F_Name  + e1.L_Name as Employee1,
       e2.F_Name + e2.L_Name as Employee2
from Employees e1
join Employees e2 on e1.ReportsTo = e2.ReportsTo
where e1.EmployeeID <> e2.EmployeeID

