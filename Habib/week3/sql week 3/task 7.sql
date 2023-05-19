use HabibDB
select * from Emp_Salary
select emp_name, gender, city, salary, case when gender = 'male' Then 'M'
else 'F'
End AS gender_result
from emp_salary

select emp_name, gender, city, salary from Emp_Salary order by case when gender ='female' then salary end desc,
case when gender = 'male' then salary end

select emp_name, gender, city, salary, case when salary >=50000 and salary<=100000 then 'senior'
else 'junior'
End as designation
from Emp_Salary

-- 1 - Write a query to retrieve the product name, unit price, and discount for all orders in the "Order Details" table, and apply a discount of 10% if the unit price is greater than or equal to 50.
use Northwind
select productname, o.unitprice, o.discount,
case when o.UnitPrice >=50 then o.UnitPrice*0.1 else 0 end as discounted_value
from products as pd
inner join [Order Details] as o
on (o.ProductID = pd.ProductID)

--2 - Write a query to retrieve the product name, unit price, and supplier name for all products in the "Products" table, and apply a case statement to display "Not available" if the supplier name is null.

select productname, unitprice, contactname,
case when sp.SupplierID is null then 'not available'
else ContactName
end as Supplier
from Suppliers as sp
inner join Products as pd
on (sp.SupplierID = pd.SupplierID)