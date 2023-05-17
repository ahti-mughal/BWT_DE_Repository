use NORTHWND;
/*Joins*/



/* Inner Join */ 
 
select E.FirstName, E.LastName, o.ShipCountry from Employees E inner join Orders o on E.EmployeeID = O.EmployeeID;
select P.ProductName, C.categoryName from Products P inner join  Categories C on P.CategoryID = C.CategoryID;



/* Outer Join -  Full outer join - Full join*/

/* An outer join returns a set of records (or rows) that include what an inner join would return but also includes other rows for which no corresponding match is found in the other table */

select P.ProductName, s.Country from Products P full outer join Suppliers s on P.SupplierID = s.SupplierID;
select E.FirstName, E.LastName, o.ShipCountry from Employees E full outer join Orders o on E.EmployeeID = O.EmployeeID;



/* Left Join */

/* Common values/matching values from both columns + left table */

select od.UnitPrice, o.ShipName , o.ShipCountry from [Order Details] od left join orders o on od.ProductID = o.OrderID;
select * from Employees E left join Orders O on E.EmployeeID = O.OrderID;



/* Right Join */

/* Common values/matching values from both columns + Right table */

select od.UnitPrice, o.ShipName , o.ShipCountry from [Order Details] od right join orders o on od.ProductID = o.OrderID;
select * from Employees E right join Orders O on E.EmployeeID = O.OrderID;



/* Self Join */

/* Self join is the join of a table itself which returns values based on some condition within the table */

select * from orders o1 inner join Orders o2 on o1.OrderID = o2.EmployeeID;
select * from products p1 inner join products p2 on p1.SupplierID=p2.CategoryID;



/* Cross Join */

/* Number of rows in first table multiplies with number of rows in second column */
select FirstName, LastName from Employees cross join Orders
select o.OrderDate, o.ShippedDate,od.Discount,od.Quantity from orders o cross join [Order Details] od;
 


/* Left Anti-Join */

/* Left joins returns left table Unmathced values or we can also say that (tables- right join)=left anti join */

select E.FirstName, E.LastName, S.companyName from Employees E left join suppliers S on E.EmployeeID = S.SupplierID where S.SupplierID is null;
select od.UnitPrice, o.ShipName , o.ShipCountry from [Order Details] od left join orders o on od.ProductID = o.OrderID where o.OrderID is null;



/* Right Anti-Join */

/* Right joins returns right table Unmathced values or we can also say that (tables- left join)=right anti join */

select * from Employees E right join suppliers S on E.EmployeeID = S.SupplierID where E.EmployeeID is null;
select od.UnitPrice, o.ShipName , o.ShipCountry from [Order Details] od right join orders o on od.ProductID = o.OrderID where od.OrderID is null;
