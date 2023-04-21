select P_Name from Product;

select P_Name from Product where UnitPrice >= 100;
select P_Name from Product where Discontinued = 1

select P_Name from Product 
order by P_ID;

select P_Name from Product 
order by P_ID DESC;
 
select distinct Order from Product;

select distinct Stock from Product
order by Stock;

select P_Name,ISNULL(Stock, 00) as Stock_U from Product; 

select isnull(ma_id, 0) from employee;

select P_Name as Stock from Product where U_Stock = 0;

select P_ID,P_Name from Product where U_Price between 20 and 30;

select E_ID,Title from Employee where Title like '%Sales%' 
select E_ID,Title from Employee where Title like 'Sales%'
select E_ID,Title from Employee where Title like '%Sales'

select FirstName,LastName from Employee where Country in ('Pakistan', 'Turkey')

select top 5 P_Name from Product 

select C_ID  from Categories
union
select O_ID  from [Order Details]

select C_ID from Product
intersect
select O_ID from [Order Details]
 
select C_ID from customer
except
select C_ID from order








