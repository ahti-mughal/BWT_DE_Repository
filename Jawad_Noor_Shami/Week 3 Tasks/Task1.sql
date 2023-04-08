Create table house(
id int Primary key,
address Varchar (255) not null,
city varchar(100) not null,
state varchar(100) not null,
zipcode varchar(10) not null,
bedroom int,
sauare_feet int,
bathrooms float ,
price float,
description text


)
/*select*/

Select * from house 

/*Inserting data in to the table*/


INSERT INTO house (id, address, city, state, zipcode, bedroom, bathrooms, sauare_feet, price, description)
VALUES
(1, '123 Main St', 'Anytown', 'CA', '12345', 3, 2.5, 2000, 500000, 'Beautiful home in a quiet neighborhood'),
(2, '456 Elm St', 'Sometown', 'CA', '67890', 4, 3.5, 3000, 750000, 'Spacious home with a large backyard'),
(3, '789 Oak St', 'Othertown', 'CA', '13579', 2, 1.5, 1500, 350000, 'Cozy starter home in a great location'),
(4, '111 Pine St', 'Newtown', 'CA', '24680', 5, 4.5, 4000, 1000000, 'Luxury home with all the amenities'),
(5, '222 Maple St', 'Sometown', 'CA', '97531', 3, 2, 1800, 450000, 'Charming cottage with lots of character');

Select * from house

/* Where clause */

select * from house where bedroom=2;

/* Order By clause */

select * from house order by price desc;

/* Distinct keyword */

select distinct state from house ;


/* Isnull() function */

select address,ISNULL(description,'No description available') as description from house ;


/* COlumn alias */
select address as property_address ,price as property_price from house;


/* PREDICATES*/


Select * from house where price BETWEEN  500000  and 1000000;

select * from house where zipcode in('12345','24680')


select * from house where address like '123 Main St'

select * from house where description is null;

/* top clause */

select top 3 * from house order by price;


/* Set Operators*/
/*union */

select state from house 

union
select state from house2


/*intersetc*/

select price from house 

intersect 

select price from house2


/*except*/

select zipcode from house 

except 

select zip_code from house2



     		















