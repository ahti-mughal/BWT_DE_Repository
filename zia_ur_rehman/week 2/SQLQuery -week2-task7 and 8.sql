/* ---TASK 7--- */

select *from Categories;
SET IDENTITY_INSERT categories ON;
INSERT INTO Categories(categoryID, CategoryName, Description) VALUES (9, 'spices', 'Biryani masala and tikka masala');
SET IDENTITY_INSERT categories OFF;

SELECT *
INTO categories_copy2
FROM Categories;

UPDATE categories_copy
SET Description = 'biryani masala, tikka masala and black pepper powder'
WHERE CategoryID = 9;

select * from categories_copy;

delete from categories_copy
where CategoryID = 9;

truncate table categories_copy;

/* ---TASK 8--- */

SET IDENTITY_INSERT categories_copy ON;
insert into categories_copy (CategoryID,CategoryName, Description)
values (1,'Meat', 'Beef, chicken, mutton'),
		(2,'Dairy' , 'milk, yugurt and butter');

delete from categories_copy
where CategoryName = 'dairy';

delete from categories_copy2
where CategoryName = 'Dairy Products'
and Description like ('%Cheeses%');

select * from categories_copy2;

update categories_copy2
set CategoryName = 'Dairy Products', Description = 'Milk, cheese, butter'
where CategoryID = 9;