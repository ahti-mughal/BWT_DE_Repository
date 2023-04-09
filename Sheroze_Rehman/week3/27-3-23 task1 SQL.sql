use northwind
/*all name starts with a and are owner*/
select * from Contacts where ContactName 
like 'a%' and ContactTitle='Owner'


/*query orderdetails table ordering by unitprice and product id*/
select * from [Order Details] 
order by UnitPrice,ProductID


/*all country name will appears once*/
select distinct 
Country from Contacts


/*Query to check if fax isnull then write no fax*/
SELECT ContactID, ISNULL(Fax,'no fax') Fax 
from Contacts 

/*query to change column name on output by using as or alias*/
select 
CompanyName as Company ,CustomerID as ID ,ContactName AS BuyerName
from Customers


select * from [Order Details] 
where UnitPrice  between 10 and 40
and Quantity>10


SELECT  * FROM Customers
WHERE Country IN ('Germany', 'France', 'UK') ;



select top 10 * from [Order Details Extended] order by ExtendedPrice desc



SELECT City FROM Contacts
UNION
SELECT City FROM Customers


select CompanyName,Country from Contacts
intersect 
select CompanyName,Country from Customers



select Distinct City from Contacts where Country='Germany'



select City,ContactName from Contacts where Country='Germany'
except 
select city,ContactName from Contacts where City='Berlin'







