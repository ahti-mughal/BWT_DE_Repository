--create database BTW_TASK06_DB;
create table employees(
eid varchar primary key check(eid like '[A-Z][A-Z][A-Z]%-[0-9][0-9][0-9][0-9]%'),
ename varchar(50) not null,
age int check(age between 18 and 85), 
cnic varchar(50) not null unique check (cnic like '_%_%_%_%_%-_%_%_%_%_%_%_%-_%'),
email VARCHAR(100) UNIQUE,
depart_id varchar check(depart_id like '[A-Z][A-Z][A-Z]%-[0-9][0-9][0-9][0-9]%'),
gender bit default 0
);
create table department(
dname varchar(50) not null, 
depart_id varchar primary key check(depart_id like '[A-Z][A-Z][A-Z]%-[0-9][0-9][0-9][0-9]%') references employees(eid) 
);
ALTER TABLE employees
ADD phone INT check(phone like '[0][0-9][0-9][0-9]-[0-9][0-9][0-9][0-9][0-9][0-9][0-9]')
DROP TABLE department