select *
from customer;

select customer.name as Customer_name, vendor.Name as Vendor_name
from customer
    inner join vendor on customer.ID = vendor.id;


select customer.name as Customer_name, vendor.Name as Vendor_name
from customer
    left join vendor on customer.ID = vendor.id;

select customer.name as Customer_name, vendor.Name as Vendor_name
from customer
    right join vendor on customer.ID = vendor.id;

select vendor.name, count(vendor.name) as Vendor_name
from customer
    left join vendor
    on customer.ID = vendor.id
group by vendor.name;


select *
from vendor;


update vendor set name = 'Bin Ahmed' where id = 2;


select vendor.name, count(vendor.name) as Vendor_name
from customer
    left join vendor

    on customer.ID = vendor.id
group by count(vendor.email);


select *
from customer;



select vendor.name, COUNT(vendor.name from  vendor as a

select C1.Name, C2.Email
from customer as C1, customer as C2
where c1.ID <> c2.ID and c1.Email = c2.Email;

select a.name as Namez, a.Email as Email, count(a.Email) as Count
from customer a, customer b
group by a.Name
having COUNT(a.Name) > 30
;


SELECT *
FROM vendor AS v
    LEFT JOIN customer AS c
    ON c.id = v.ID;


select a.id, a.name, b.name
from customer as a
    inner join customer as b
    on a.id = b.id



-- Inner Join 
-- Any Null value from the left table or in the right table will not consider

Select *
from customer
    join vendor
    on customer.id = vendor.ID;


-- Right Join 
-- Any Null Value will also been shown but from the right Table 


Select *
from customer
    right join vendor
    on customer.id = vendor.ID;


update vendor set name = 'Bin Ahmed' where id = 2;


select vendor.name, count(vendor.name) as Vendor_name
from customer
    left join vendor

    on customer.ID = vendor.id
group by count(vendor.email);


select *
from customer;



select vendor.name, COUNT(vendor.name from  vendor as a

select C1.Name, C2.Email
from customer as C1, customer as C2
where c1.ID <> c2.ID and c1.Email = c2.Email;

select a.name as Namez, a.Email as Email, count(a.Email) as Count
from customer a, customer b
group by a.Name
having COUNT(a.Name) > 30
;



select *
from customer
    inner join vendor
    on customer.Role_Id = vendor.role_id;


select *
from customer
    right join vendor
    on customer.Role_Id = vendor.role_id;

select *
from customer
    left join vendor
    on customer.Role_Id = vendor.role_id;

select distinct c.Name, c.email as Common_Email
from customer as c
    left join vendor as v
    on c.Email = v.email


SELECT *
from customer
    join vendor
    on customer.Email = 'zapeeosheikh@gmail.com' and vendor.email = 'zapeeosheikh@gmail.com';

SELECT *
from customer
    join vendor
    on customer.Email = 'zapeeosheikh@gmail.com'
;


select *
from customer
    full outer join vendor
    on customer.Role_Id = vendor.role_id


select *
from customer 
cross join vendor
;


select distinct C.Name as Customer_Name, V.name as Vendor_Name
from customer as C
cross join vendor as V
order by V.name desc;



select *
from customer
where name in (Select name
from vendor);


select *
from customer
where Role_Id in (Select role_id
from vendor);


select *
from customer
where name not in (Select name
from vendor);

select name, count(name)
from customer
group by name


SELECT name, count(name) as Similar_names
from customer
group by name
having count(name) > 2;

