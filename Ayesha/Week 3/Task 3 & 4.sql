Use Northwind
Go

                             /*--------------------------------------------------*/
							 /*----------------------Task 3---------------------*/

/* INNER JOIN */
Select  * from Employees INNER JOIN Customers 
    on Employees.City = Customers.City 
    where Employees.country ='USA' and Employees.region is not null
	order by Employees.FirstName ;

SELECT emp.EmployeeID,emp.FirstName,emp.LastName,cust.CompanyName
      FROM Employees as emp INNER JOIN Customers as cust
      on emp.City= cust.City and emp.Country = cust.Country
      WHERE HireDate > '1992-05-01' ;
	 
SELECT Customers.CompanyName, Orders.OrderID
        FROM Customers INNER JOIN Orders 
		on Customers.CustomerID=Orders.CustomerID and ContactTitle Like '%Owner%';

		/* LEFT JOIN */
SELECT emp.EmployeeID,emp.FirstName,emp.LastName,cust.CompanyName
      FROM Employees as emp Left JOIN Customers as cust
      on emp.City= cust.City and emp.Country = cust.Country
      WHERE HireDate between '1992-05-01' and '1994-11-15'  ;

SELECT Customers.CompanyName, Orders.OrderID
        FROM Customers Left JOIN Orders 
		on Customers.CustomerID=Orders.CustomerID and Country Like '%G%';

SELECT Customers.CompanyName, Orders.OrderID
        FROM Customers Left JOIN Orders 
		on Customers.CustomerID=Orders.CustomerID 
		where Region is null  order by  (orderdate) desc;

		/* FULL OUTER JOIN */
SELECT emp.EmployeeID,emp.FirstName,emp.LastName,cust.CompanyName
      FROM Employees as emp Full Outer JOIN Customers as cust
      on emp.City= cust.City and emp.Country = cust.Country
      WHERE  emp.Country in ('USA','UK');  

SELECT Customers.CompanyName, Orders.OrderID
        FROM Customers Full Outer JOIN Orders 
		on Customers.CustomerID=Orders.CustomerID
		where CompanyName not Like '%A%';
		 
		/* Right JOIN */
SELECT emp.EmployeeID,emp.FirstName,emp.LastName,cust.CompanyName
      FROM Employees as emp Right JOIN Customers as cust
      on emp.City= cust.City and emp.Country = cust.Country
      WHERE  emp.Region is not null ; 

SELECT Customers.CompanyName, Orders.OrderID
        FROM Customers Right JOIN Orders 
		on Customers.CustomerID=Orders.CustomerID 
		where Country in ('UK','Sweden','France')
		group by Customers.CustomerID
		Having count(Customers.CustomerID) = 1;
	 
	 /* CROSS JOIN */
SELECT emp.EmployeeID,emp.FirstName,emp.LastName,cust.CompanyName
        FROM Employees as emp Cross JOIN Customers as cust; 

SELECT Customers.CompanyName, Orders.OrderID
         FROM Customers CROSS JOIN Orders
         WHERE Customers.CustomerID=Orders.CustomerID
		 group by Customers.CustomerID
		  HAVING COUNT(orderdate) >= 2; 
		  

      /*self join*/
SELECT A.FirstName AS firstEmployeeName, B.FirstName AS SecondEmployeeName, A.City
      FROM Employees A, Employees B
      WHERE A.EmployeeID <> B.EmployeeID
      AND A.City = B.City
      ORDER BY A.City;

SELECT  a.FirstName+a.LastName AS "Employee Name" ,b.HireDate
       FROM Employees a, Employees b
       WHERE a.HireDate	 < b.HireDate order by a.HireDate;

 /*left anti join*/
SELECT  Territories.TerritoryID,EmployeeTerritories.TerritoryID
        FROM Territories LEFT  JOIN EmployeeTerritories 
	    on Territories.TerritoryID = EmployeeTerritories.TerritoryID
		where EmployeeTerritories.TerritoryID is null;

SELECT Customers.ContactName, Orders.OrderID,Orders.ShipName
        FROM Customers Left JOIN Orders 
		on Customers.CustomerID = Orders.CustomerID where Orders.CustomerID is NULL;

SELECT Customers.City,Employees.City
        FROM Customers Left JOIN Employees 
		on Customers.City = Employees.City where Employees.City is NULL;	 

/*Right anti join*/
SELECT  Territories.TerritoryID,EmployeeTerritories.TerritoryID
        FROM EmployeeTerritories Right  JOIN  Territories
	    on Territories.TerritoryID = EmployeeTerritories.TerritoryID
		where EmployeeTerritories.TerritoryID is null;

Select * from employees;
SELECT Customers.City,Employees.City
        FROM Customers Right JOIN Employees 
		on Customers.Region = Employees.Region where Customers.Region is NULL;
   
                             /*--------------------------------------------------*/
							 /*----------------------Task 4---------------------*/
/*1 - Write a query to show a list of customers and their corresponding orders.*/
SELECT Customers.ContactName, Orders.OrderID,Orders.ShipName
      FROM Customers  
      LEFT JOIN Orders
	  ON Customers.CustomerID = Orders.CustomerID; 

/*2 - Write a query to show a list of employees and their corresponding managers*/

SELECT A.FirstName+ ' '+ A.LastName AS "Employee Name", B.ReportsTo
      FROM Employees A, Employees B
      WHERE A.EmployeeID = B.EmployeeID;
      

/*3 - Write a query to show a list of customers who have not placed any orders.*/

SELECT Customers.ContactName, Orders.OrderID,Orders.ShipName
        FROM Customers Left JOIN Orders 
		on Customers.CustomerID = Orders.CustomerID
		where Orders.CustomerID is NULL;

/*4 - Write a query to show a list of employees and their corresponding territories,
including those employees who have no territories assigned.*/
SELECT  Employees.FirstName+Employees.LastName AS "Employee Name", EmployeeTerritories.EmployeeID,
        Territories.TerritoryID,EmployeeTerritories.TerritoryID
        FROM Employees Right JOIN EmployeeTerritories 
		on Employees.EmployeeID = EmployeeTerritories.EmployeeID 
		Right join Territories on Territories.TerritoryID = EmployeeTerritories.TerritoryID ;

		

