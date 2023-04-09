SELECT * INTO CyberSecurity
FROM DataEngineering;


SELECT * INTO CyberCrokes
FROM DataEngineering where no_of_Assignment_completed > 3;

SELECT * from CyberSecurity;

SELECT * from CyberCrokes;


Create Table Toppers(
    name VARCHAR (255) not null,
    no_of_Assignment_completed int not null,
    grade VARCHAR (255)
);

INSERT INTO Toppers (name, no_of_Assignment_completed)
SELECT name, no_of_mobile_app_created FROM MobileApp where no_of_mobile_app_created > 3;


INSERT INTO Toppers (name, no_of_Assignment_completed)
SELECT name, no_of_Assignment_completed FROM DataEngineering where no_of_Assignment_completed > 3;

INsert into Toppers (name, no_of_Assignment_completed, grade)
values ('Ahtisham Sir', 6, 'A+')

select * from Toppers;

UPDATE Toppers
SET Grade = CASE
    WHEN no_of_Assignment_completed > 4 THEN 'A'
    ELSE 'B'
END
WHERE no_of_Assignment_completed IS NOT NULL;


UPDATE Toppers
SET Grade = CASE
    WHEN no_of_Assignment_completed > 5 THEN 'A+'
    WHEN no_of_Assignment_completed > 4 THEN 'A'
    ELSE 'B'
END
WHERE no_of_Assignment_completed IS NOT NULL;


Truncate Table CyberCrokes;

SELECT * from CyberCrokes;


Insert into MobileApp (id, name, no_of_mobile_app_created, updates)
values (13, 'Taimoor', 2, 3),
(6, 'Mirza', 1, 3),
(7, 'Talal', 5, 3),
(8, 'Danish', 6, 3),
(9, 'Sameer', 3, 3),
(10, 'Faiz', 1, 2),
(11, 'Lareeb', 4, 2),
(12, 'Saif', 1, 1)
;

SELECT * from MobileApp;


Delete from MobileApp where name = 'Mirza';

Delete from MobileApp where name = 'Faiz';

Delete from MobileApp where no_of_mobile_app_created > 2 and updates = 2;


Update Toppers set no_of_Assignment_completed = 5, grade = 'A++'
where grade = 'A+'



select * from Toppers;

select * from DataEngineering;

select name, is_graduated from DataEngineering where is_graduated = 1;

select * from DataEngineering order by name;

select * from DataEngineering order by no_of_Assignment_completed desc;

select distinct name from DataEngineering ;


insert into DataEngineering (id, name, no_of_Assignment_completed, is_graduated) values (10, 'Rameez Abdullah', 2, 1),
(11, 'Abdullah Ali', 3, 1),(12, 'Ali Abdullah', 2, 1),(13, 'Rameez Sameer', 2, 1),
(14, 'Rameez Abdullah', 2, 1),(15, 'Rameez Abdullah', 2, 1),(16, 'Rameez Abdullah', 2, 1),
(17, 'Rameez Abdullah', 2, 1),(18, 'Rameez Abdullah', 2, 1),(19, 'Rameez Abdullah', 2, 1),
(20, 'Rameez Abdullah', 2, 1);

select distinct name as Student_Name from DataEngineering; 


create database inventoryManagement;

create Table customer (
    ID Int not null,
    Name VARCHAR(255) not null,
    Email VARCHAR(255),
    Role_Id int not null,

)

select * from customer;

insert into customer (Id, Name, Email, Role_Id) values (1, 'MRameez', 'muhammadrmz871@gmail.com', 1);

SELECT * INTO CyberSecurity
FROM DataEngineering;


SELECT * INTO CyberCrokes
FROM DataEngineering where no_of_Assignment_completed > 3;

SELECT * from CyberSecurity;

SELECT * from CyberCrokes;


Create Table Toppers(
    name VARCHAR (255) not null,
    no_of_Assignment_completed int not null,
    grade VARCHAR (255)
);

INSERT INTO Toppers (name, no_of_Assignment_completed)
SELECT name, no_of_mobile_app_created FROM MobileApp where no_of_mobile_app_created > 3;


INSERT INTO Toppers (name, no_of_Assignment_completed)
SELECT name, no_of_Assignment_completed FROM DataEngineering where no_of_Assignment_completed > 3;

INsert into Toppers (name, no_of_Assignment_completed, grade)
values ('Ahtisham Sir', 6, 'A+')

select * from Toppers;

UPDATE Toppers
SET Grade = CASE
    WHEN no_of_Assignment_completed > 4 THEN 'A'
    ELSE 'B'
END
WHERE no_of_Assignment_completed IS NOT NULL;


UPDATE Toppers
SET Grade = CASE
    WHEN no_of_Assignment_completed > 5 THEN 'A+'
    WHEN no_of_Assignment_completed > 4 THEN 'A'
    ELSE 'B'
END
WHERE no_of_Assignment_completed IS NOT NULL;


Truncate Table CyberCrokes;

SELECT * from CyberCrokes;


Insert into MobileApp (id, name, no_of_mobile_app_created, updates)
values (13, 'Taimoor', 2, 3),
(6, 'Mirza', 1, 3),
(7, 'Talal', 5, 3),
(8, 'Danish', 6, 3),
(9, 'Sameer', 3, 3),
(10, 'Faiz', 1, 2),
(11, 'Lareeb', 4, 2),
(12, 'Saif', 1, 1)
;

SELECT * from MobileApp;


Delete from MobileApp where name = 'Mirza';

Delete from MobileApp where name = 'Faiz';

Delete from MobileApp where no_of_mobile_app_created > 2 and updates = 2;


Update Toppers set no_of_Assignment_completed = 5, grade = 'A++'
where grade = 'A+'



select * from Toppers;

select * from DataEngineering;

select name, is_graduated from DataEngineering where is_graduated = 1;

select * from DataEngineering order by name;

select * from DataEngineering order by no_of_Assignment_completed desc;

select distinct name from DataEngineering ;


insert into DataEngineering (id, name, no_of_Assignment_completed, is_graduated) values (10, 'Rameez Abdullah', 2, 1),
(11, 'Abdullah Ali', 3, 1),(12, 'Ali Abdullah', 2, 1),(13, 'Rameez Sameer', 2, 1),
(14, 'Rameez Abdullah', 2, 1),(15, 'Rameez Abdullah', 2, 1),(16, 'Rameez Abdullah', 2, 1),
(17, 'Rameez Abdullah', 2, 1),(18, 'Rameez Abdullah', 2, 1),(19, 'Rameez Abdullah', 2, 1),
(20, 'Rameez Abdullah', 2, 1);

select distinct name as Student_Name from DataEngineering; 


create database inventoryManagement;

create Table customer (
    ID Int not null,
    Name VARCHAR(255) not null,
    Email VARCHAR(255),
    Role_Id int not null,

)

select * from customer;

insert into customer (Id, Name, Email, Role_Id) values (1, 'MRameez', 'muhammadrmz871@gmail.com', 1);
insert into customer (Id, Name, Email, Role_Id) values (1, 'MRameez', 'muhammadrmz871@gmail.com', 1);


insert into customer (Id, Name, Email, Role_Id) values (2, 'MRameez', 'beingaravian@gmail.com', 2),
(3, 'MRameez', 'abstractprogrammerz@gmail.com', 3),(4, 'Muhammad Rameez', 'beingaravian@gmail.com', 1),
(5, 'M.Adeel', 'zapeeosheikh@gmail.com', 4),(6, 'ZapeeoSheikh', 'zapeeosheikh@gmail.com', 1),
(7, 'Ahmed Ali', 'beingaravian@gmail.com', 2),(8, 'Danish Ahmed', 'abc@gmail.com', 1),
(9, 'Qaisar Javad', 'beingaqasir@gmail.com', 1),(10, 'Meer Hamza', 'beingameer@gmail.com', 1),
(11, 'Saleem Ghori', 'beinghuman@gmail.com', 1),(12, 'Haiqah Atif', 'haiqah.n@gmail.com', 1);


update customer set Role_Id = 2;

update customer set Name = 'Muhammad Adeel' where Name = 'M.Adeel';


update customer set Email = 'beingravian@gmail.com' where Email = 'beingaravian@gmail.com';



select * from customer where Email = 'beingravian@gmail.com';

select * from customer ORDER by Name;

SELECT DISTINCT NAME FROM CUSTOMER;


SELECT NAME FROM CUSTOMER WHERE NAME LIKE '%Muhammad%';
select email from customer where email like '%being%';


insert into customer values (13, 'Muhammad Bin Qasim', 'qaism001@gmail.com', 1),
(14, 'Muhammad Bin Ahmed', 'ahmed001@gmail.com', 1)
;


create table vendor (
    id int not null,
    name VARCHAR(256) not null,
    email VARCHAR(256) null, 
    role_id int not null
)

select * from vendor;
insert into vendor values (1, 'Muhammad Bin Qasim', 'qaism001@gmail.com', 1),
(2, 'Muhammad Bin Ahmed', 'ahmed001@gmail.com', 1)
;

insert into vendor values (3, 'Muhammad Ali', 'ali001@gmail.com', 1),
(4, 'Bin Ahmed', 'ahmed0@gmail.com', 1), (5, 'Bin Ahmed', null, 1),
(6, 'Bin Li Ahmed', null, 1),(7, 'Ahmed Bin Ahmed', 'ahmed0ahmed@gmail.com', 1),
(8, 'Ahmed Bin Li Ahmed', null, 1)
;


select name from vendor where email is null;

select name from vendor where email is not null;

select name as vendor_name, email as vendor_email from vendor;


select name as Names_with_M from vendor where name like 'M%';

--  database Bytewise Fellowship

select * from MobileApp;

select * from MobileApp where updates = 3;

select * from MobileApp where updates = 3 and no_of_mobile_app_created = 5;

select * from MobileApp where updates = 3 and no_of_mobile_app_created BETWEEN 3 and 5 ;
select * from MobileApp where updates in (1,3,4);

select * from MobileApp where updates in (1,3,4) order by updates;
select * from MobileApp where updates in (1,3,4) order by updates desc;
 
 -- database inventoryManagement

SELECT top 5 * from customer ;
SELECT top 5 * from customer order by ID desc;
SELECT top 1 * from customer where Role_Id = 1



SELECT min(Role_Id) from customer;
SELECT max(Role_Id) from customer;
SELECT count(Role_Id) from customer;
SELECT sum(Role_Id) from customer;

select * from customer union SELECT * FROM vendor;
select * from customer WHERE role_id = 2 union SELECT * FROM vendor WHERE role_id = 1 order by Role_Id desc;

SELECT Name from customer INTERSECT SELECT name from vendor;

SELECT name from customer EXCEPT SELECT name from vendor;
