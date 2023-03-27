create database bytewise;
use bytewise;
create table student (name varchar(20),age int,rollNo int);

insert into student values 
('Saddar',19,77),
('Azhar',20,87),
('Shahid',19,78),
('Mubashir',19,71);

create table ugStd (select * from student);

create table masterStd (name varchar(15),roll int);
insert into masterStd 
(select name, rollNo from student);

SET SQL_SAFE_UPDATES=0;
update masterStd set name="Saddar Babar" where roll =77;

delete from masterStd where roll =78;

truncate table masterStd;



insert into masterStd values
('Saddar U Din',77),
('Haseeb',90),
('Muhammad Khan',73),
('Khaleeque',71);


delete from masterStd where roll in (77,71);


delete from ugstd where age=19 and rollNo=71;

update student set name="Saddar U Din" where age =19;
