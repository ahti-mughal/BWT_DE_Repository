--Creating database 
CREATE DATABASE practice_DB
--Creating table for NOT NULL constraint
CREATE TABLE persons(
	ID int NOT NULL,
	Last_Name varchar(255) NOT NULL,
	Age int NOT NULL
);
INSERT INTO persons (ID,Last_Name,Age)
VALUES (0,'Asad',32);

SELECT * FROM persons;

DROP TABLE persons;

--Creating table for UNIQUE constraint

CREATE TABLE persons(
	ID int NOT NULL UNIQUE,
	Last_Name varchar(255) NOT NULL,
	Age int NOT NULL
);
INSERT INTO persons (ID,Last_Name,Age)
VALUES (1,'Asad',32);

INSERT INTO persons (ID,Last_Name,Age)
VALUES (1,'Basit',25);

SELECT * FROM persons;

DROP TABLE persons;

--Creating table for PRIMARY KEY constraint

CREATE TABLE persons(
	ID int PRIMARY KEY,
	Last_Name varchar(255) NOT NULL,
	Age int NOT NULL
);
INSERT INTO persons (ID,Last_Name,Age)
VALUES (5,'Ali',22);

SELECT * FROM persons;

DROP TABLE persons;

--Creating table for CHECK constraint

CREATE TABLE persons(
	ID int NOT NULL UNIQUE,
	Last_Name varchar(255) NOT NULL,
	Age int NOT NULL,
	CHECK (Age>=18)
);
INSERT INTO persons (ID,Last_Name,Age)
VALUES (1,'Asad',32);

INSERT INTO persons (ID,Last_Name,Age)
VALUES (2,'Basit',17);

SELECT * FROM persons;

DROP TABLE persons;