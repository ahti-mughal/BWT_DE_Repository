insert into product (id,name,price,category,description) values (7,'LCD',2000.00,'Electric','In Stock 200'), (8,'Remote',300.00,'Electronic','In Stock 100')

delete from product where category = 'Electric'

delete from product where category = 'Electronic' and description like '%Stock%'

update product
set name = 'TV', price = 2000.00
where id = 1

