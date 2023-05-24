--1 
select P.P_Name,C.C_Name from Customer as C
join Order as O on C.C_ID = O.C_ID
join [Order Details] as OD on OD.O_ID = O.O_ID
join Product as P on P.P_ID = OD.P_ID; 

--2 
select e1.F_Name as employee,e2.F_Name as manager
from Employees e1
inner join Employees e2
on e1.ReportsTo = e2.EmployeeID;


--3 
select C.C-Name from Customer as C
full outer join Order as O
on C.C_ID = O.C_ID
where O.O_ID is null 



--4 
select E.F_Name,T.TerritoryDescription from Employees as E
left join EmployeeTerritories as ET
on E.Emp_ID = ET.Emp_ID
left join Territories as T
on ET.Ter_ID = T.Ter_ID





