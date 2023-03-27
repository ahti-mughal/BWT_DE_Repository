

    --creating a table
create table person(
id int not null,
firstname varchar(56) not null,
lastname varchar(56) not null
);

  --altering a table

exec sp_rename 'person','Per'; 


--altering a table

drop table Per;