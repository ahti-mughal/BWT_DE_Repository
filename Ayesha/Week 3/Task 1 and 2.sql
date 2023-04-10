Use  Northwind
GO

                      /*----------------------Task 1---------------------*/
/* Where clause*/
Select * from Employees where LastName = 'King' and EmployeeID>5  ;

/*Order By Clause*/
Select * from Employees order by Country ,HireDate;
Select * from Employees order by BirthDate desc;
Select * from Employees order by FirstName desc, BirthDate asc;

/* Distinct Keyword*/
Select distinct FirstName,Country,City from Employees;

/*Isnull() function*/
/* it takes two arguments 1st arg is the expression which we want to test that it is null or not and 2nd arg is the value return if the 1st arg is null */
Select ISNULL(NULL,500);
Select ISNULL(NULL,NULL);
Select ISNULL('HELL WO','HELLO  WORLD');
Select ISNULL(null,null);

/*Column aliases*/
Select  FirstName as fName, LastName as lName from Employees;

     		/*Is Null Predicate*/
Select * from Employees where Region IS NULL;
              /*in Predicate*/
Select * from Employees where Country in ('USA','UK');
Select * from Employees where EmployeeID in (4,9);
              /*Between Predicate*/
Select * from Employees where EmployeeID between 4 and 9;
               /*LIKE Predicate*/
Select * from Employees where FirstName Like '%M%';
               /*all Predicate*/

/* inner query return product id 4 and 5 as input to outer query and 
outer query returns all the recoords where product id is less than both 4 and 5*/
Select * from Products where ProductID < all (Select ProductID from Products where ProductID in (4,5));
Select * from Products where UnitPrice > all (Select UnitPrice from Products where UnitsInStock >100);
                 /*any Predicate*/
/* inner query return product id 4 and 5 as input to outer query and 
outer query returns all the recoords where product id is less than of 5 due 
to any oerator so its ncessary to just fullfill one condition not all */
Select * from Products where ProductID < any (Select ProductID from Products where ProductID in (4,5));
Select * from Products where UnitPrice > any (Select UnitPrice from Products where UnitsInStock >100);

                             /*or Predicate*/
Select * from Employees where LastName = 'King' or EmployeeID>5  ;

                           /*and Predicate*/
Select * from Employees where LastName = 'King' and EmployeeID>5  ;

/*Retrieval of Top n Clause*/
Select ProductName from Products where UnitsOnOrder < any (Select TOP(10) UnitsOnOrder from Products );
Select TOP(10) * from Products;

/*
Set Operators
     	- Union
     	- Intersect
     	- Except
			*/
Select  City from Employees Union Select City from Customers order by city;
Select  City from Employees Intersect Select City from Customers order by city;
Select  City from Employees Except Select City from Customers order by city;

                             /*--------------------------------------------------*/
							 /*----------------------Task 2---------------------*/
/*1 - Retrieve the product name, unit price,and units in stock of all 
products that cost less than $20, ordered by product name.*/
Select ProductName,UnitPrice,UnitsInStock from Products where UnitPrice < 20 order by ProductName;

/*2 - Retrieve the order ID, customer ID, and order date of
all orders that do not have a customer ID, ordered by order date.*/
Select OrderID,CustomerID,OrderDate from orders where CustomerID IS NULL order by OrderDate;

/*3 - Retrieve the category names of all products, as well as the countries
to which orders have been shipped, without any duplicates.*/
 Select  CategoryName from Categories Union All Select distinct ShipCountry from Orders;

