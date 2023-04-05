

use Northwind;

----INNER JOIN
select Orders.OrderID ,Orders.OrderDate,Customers.CompanyName
from Orders
inner join Customers ON Orders.CustomerID =Customers.CustomerID;

----OUTER JOIN

select Orders.OrderID ,Orders.OrderDate,Customers.CompanyName
from Orders
full outer join Customers ON Orders.CustomerID =Customers.CustomerID;

---left join

select Orders.OrderID ,Orders.OrderDate,Customers.CompanyName
from Orders
left join Customers ON Orders.CustomerID =Customers.CustomerID;

--Right join

select Orders.OrderID ,Orders.OrderDate,Customers.CompanyName
from Orders
RIght join Customers ON Orders.CustomerID =Customers.CustomerID;

--self join

SELECT Z.CompanyName AS CustomerName1, Z.CompanyName AS CustomerName2, Z.City
FROM Customers Z, Customers B
WHERE Z.CustomerID = B.CustomerID
AND Z.City = B.City
ORDER BY Z.City;

---   Cross Join

select Orders.OrderID ,Orders.OrderDate,Customers.CompanyName
from Orders
cross join Customers;

--left anti join

select Orders.OrderID ,Orders.OrderDate,Customers.CompanyName
from Orders
left join Customers ON Orders.CustomerID =Customers.CustomerID 
WHERE Orders.CustomerID is NULL;

--Right anti join

select Orders.OrderID ,Orders.OrderDate,Customers.CompanyName
from Orders
Right join Customers ON Orders.CustomerID =Customers.CustomerID 
WHERE Orders.CustomerID is NULL;




