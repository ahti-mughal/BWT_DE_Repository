--1
select P_Name, U_Price, U_Stock from Product where U_Price < 20 
order by P_Name

--2 
select O_ID, C_ID, O_Date from Order where C_ID is null
order by OrderDate

--3 

select distinct C_Name, ShipCountry from Categorie C, Product P,  [Order Details] OD,Orders O
where C.C_ID = P.C_ID
and P.P_ID = OD.P_ID
and OD.O_ID = O.O_ID
