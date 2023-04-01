/* 27_March_2023 Week_3 Task # 1*/
use  Northwind

/*Select Command*/
Select * From Employees

/*We Use Where Clause*/
Select * From Employees where Title = 'Sales Representative'

/*We Use Order By Key Word*/
Select * From Employees order by City

/*We Use Distinct For Duplictes*/
Select Distinct City From Employees 

/*We Use isnull() Function For Null Null Values assign*/
Select EmployeeID,FirstName, isnull(Region,0) as Region from Employees

/*We Use aliases, We Marge Two Column and Its aliases Is Employee_Name*/
Select EmployeeID,FirstName+'_'+LastName as Employee_Name from Employees

/*We Use Predicates Between _And for Filtering With Range*/
Select  EmployeeID,FirstName+'_'+LastName as Employee_Name, HireDate
from Employees
where HireDate Between '1990-01-01' And '1993-12-30'

/*We Use In()*/
Select EmployeeID,FirstName+'_'+LastName as Employee_Name, HireDate, City
from Employees
Where City IN('Kirkland','London')

/*We Use Like Keyword to Search Name With Satr And End Letter */
Select EmployeeID, LastName,FirstName+'_'+LastName as Employee_Full_Name, HireDate, City
from Employees
Where  LastName like 'D%'

/*We Use IS NULL for Retrieve Null Values */
Select EmployeeID,FirstName+'_'+LastName as Employee_Full_Name, HireDate, City, Region
from Employees
Where Region IS NULL

/*We Use Top 5 Data Rows*/
Select Top 5 * From Employees

/*We Use UNION for Two select Query */
Select ContactName,City From Customers
Union
Select CustomerID,ShipCity from Orders

/*We Use Intersect Between two Select Keyword To retreive Common values*/
Select OrderID, ProductID From [Order Details]
Intersect
Select OrderID,ShipVia from Orders

/*We Use Except Between Two Select Query remove duplicates value */
Select CustomerID,ContactName From Customers
Except
Select CustomerID,ShipCountry from Orders

