create database farizz
/*creating a table*/ CREATE TABLE maison (
    /*using not null so that id can not be empty*/  ID int NOT NULL,
    /*using not null so that lname can not be empty*/LastName varchar(255) NOT NULL,
    /*using not null so that fname can not be empty*/FirstName varchar(255) NOT NULL,
    age int,
	CONSTRAINT UC_Person UNIQUE (ID,LastName),
	personID int,
	primary key (ID),
	check (Age>=18),
	City varchar(255) DEFAULT 'karachi'
);
/*creating a table*/ CREATE TABLE Persons (
    /*using not null so that id can not be empty*/  ID int NOT NULL,
    /*using not null so that lname can not be empty*/LastName varchar(255) NOT NULL,
    /*using not null so that fname can not be empty*/FirstName varchar(255) NOT NULL,
    age int,
	CONSTRAINT UC_Person UNIQUE (ID,LastName),
	personID int,
	FOREIGN KEY (PersonID) REFERENCES maison(PersonID),
	primary key (ID),
	check (Age>=18),
	City varchar(255) DEFAULT 'karachi'
);
SELECT name
FROM sys.tables
DROP TABLE maison;
ALTER TABLE persons
ADD Email varchar(255);