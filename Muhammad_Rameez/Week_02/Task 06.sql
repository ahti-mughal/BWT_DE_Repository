CREATE table DataEngineering (
    s_name varchar(255),
    isTaskCompleted bit,
    isGraduated bit
);



CREATE TABLE testbool (
  sometext VARCHAR(10),
  is_checked BIT
);


SELECT * from testbool;
INSERT INTO testbool (sometext, is_checked) VALUES ('a', 1);
INSERT INTO testbool (sometext, is_checked) VALUES ('b', 0);
INSERT INTO testbool (sometext, is_checked) VALUES ('a', 1);
INSERT INTO testbool (sometext, is_checked) VALUES ('b', 0);
INSERT INTO testbool (sometext, is_checked) VALUES ('a', 1);
INSERT INTO testbool (sometext, is_checked) VALUES ('b', 0);


INSERT INTO DataEngineering (s_name, isTaskCompleted, isGraduated) VALUES ('Asim Azhar', 1, 0);
INSERT INTO DataEngineering (s_name, isTaskCompleted, isGraduated) VALUES ('Atif Azhar', 0, 0);
INSERT INTO DataEngineering (s_name, isTaskCompleted, isGraduated) VALUES ('Asim Azhar', 1, 0);
INSERT INTO DataEngineering (s_name, isTaskCompleted, isGraduated) VALUES ('Meer Azhar', 0, 0);
INSERT INTO DataEngineering (s_name, isTaskCompleted, isGraduated) VALUES ('Aslam Azhar', 1, 1);
INSERT INTO DataEngineering (s_name, isTaskCompleted, isGraduated) VALUES ('Murtaza Azhar', 1, 0);
INSERT INTO DataEngineering (s_name, isTaskCompleted, isGraduated) VALUES ('Mirza Ghalib', 0, 0);
INSERT INTO DataEngineering (s_name, isTaskCompleted, isGraduated) VALUES ('Maheer Azhar', 1, 1);



Alter table DataEngineering Add status bit;

UPDATE DataEngineering SET status = 1; 


CREATE TABLE Fellow1 (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255) NOT NULL,
    Age int
);


CREATE TABLE Fellow (
    ID int NOT NULL UNIQUE,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
);


CREATE TABLE Orders (
    OrderID int NOT NULL,
    OrderNumber int NOT NULL,
    PersonID int,
    PRIMARY KEY (OrderID),
    FOREIGN KEY (PersonID) REFERENCES Persons(PersonID)
);
