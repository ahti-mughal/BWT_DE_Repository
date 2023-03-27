-- Creating a database for practice
create database task06
-- Creating Table
	create table persons(
		personId int,
		lastName varchar(255),
		firstName varchar(255),
		address_ varchar(255),
		city varchar(255)
	);

-- Altering Table (Renaming the table)
	exec sp_rename 'persons', 'person'
-- Deleting Table
	drop table person
-- SQL Constrains: Not Null, 

alter table persons alter column personId int NOT NULL;

-- Unique Constraint , 

alter table persons add unique (personId);

-- Default Constraint and 

alter table persons add constraint df_name default 'ABC' FOR firstName;

