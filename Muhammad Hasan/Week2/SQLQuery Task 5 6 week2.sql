--Creating Table
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    PRIMARY KEY (ID)
);
--Altering Table
ALTER TABLE Persons
ADD Email varchar(255);

select * from Persons;

INSERT INTO Persons (ID, LastName, FirstName, Age, Email)
VALUES ('001','Hasan','Muhammad','28','mhasan@test.com');


INSERT INTO Persons (ID, LastName, FirstName, Age, Email)
VALUES ('002','Ali','Muhammad','25','ali@test.com');

INSERT INTO Persons (ID, LastName, FirstName, Age, Email)
VALUES ('003','Sajid','Muhammad','22','sajid@test.com');

select * from Persons;

--Altering Table
DELETE FROM Persons WHERE ID='003';

select * from Persons;