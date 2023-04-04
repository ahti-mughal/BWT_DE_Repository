use BWTDE
/*
insert into customer(ID,Salary,	position,Custname,experience) 
values
(10,60000,'sub engineer','azam',6),
(11,20000,'sub engineer','mir',1),
(12,90000,'sub engineer','shan',2),
(13,90000,'sub engineer','waqas',7)
*/

/*
delete from customer where position='sub engineer'
*/

/*
insert into customer(ID,Salary,	position,Custname,experience) 
values
(10,60000,'sub engineer','azam',6),
(11,20000,'sub engineer','mir',1),
(12,90000,'sub engineer','shan',2),
(13,90000,'sub engineer','waqas',7)
*/

/*
delete from customer where position='sub engineer' and salary<50000
*/
update customer set position='senior engineer' where salary>60000 and experience>5



