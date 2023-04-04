
-- null values are not allowed  
create table person(
id int not null unique,
firstname varchar(56) not null,
lastname varchar(56) not null,
age int
);

INSERT INTO person (id, firstname, lastname)     
VALUES (1,'huzaifa',null);

select *from person;
---------------------------------------------------------------

      --check constraint
create table perso(
id int not null unique,
firstname varchar(56) not null,
lastname varchar(56) not null,
age int,
check (age>=18)
);

INSERT INTO perso (id, firstname, lastname,age)     
VALUES (2,'huzaifa','dilshad',18);

select *from perso;

------------------------------------------------------------------


CREATE TABLE Persons (
    ID int NOT NULL ,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    City varchar(255) DEFAULT 'Sandnes',
	primary key(ID)
);

INSERT INTO Persons (id, firstname, lastname,age)     
VALUES (3,'kafi','chi',18);

select *from Persons;
----------------------------------------------------------------
CREATE TABLE Prim (
    ID int NOT NULL ,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    City varchar(255) DEFAULT 'Sandnes',
	primary key(ID),
	FOREIGN KEY (ID) REFERENCES Persons(id)
);

INSERT INTO Prim (id, firstname, lastname,age)     
VALUES (3,'kafi','chi',18);

select *from Prim;

-----------------------------------------------------------------






