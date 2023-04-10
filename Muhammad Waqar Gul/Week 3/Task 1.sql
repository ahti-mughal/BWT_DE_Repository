--select  distinct city ,Country, Extension from Employees where Country='USA' Order by City;

--select ContactName, ContactTitle, ISNULL(Fax,0) from Customers where City in ('London','Madrid','Mexico');

--select FirstName,LastName,BirthDate from Employees where Birthdate between '1950' and '1970' and FirstName like 'A%';

--select count(ContactTitle) from Customers where ContactTitle='Owner';

--select Distinct City,Country from Customers where region is null;

--select TOP 10 ProductName, QuantityPerUnit,UnitPrice from Products where UnitPrice>20 order by UnitPrice DESC;

/*select CategoryID, ProductName from Products 
UNION
select categoryID, CategoryName from Categories;*/


