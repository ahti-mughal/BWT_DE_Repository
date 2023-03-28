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


Drop Database BytewiseFellowship;

Create Database Bytewise;

Alter Database Bytewise MODIFY Name = BytewiseFellowship;


Create Table DataEngineering (
    id INT NoT NULL,
    name varchar(255) not null, 
    no_of_Assignment_completed int not null,
    is_graduated bit,
    PRIMARY Key(id)

);

Create Table MobileApp (
    id INt not null,
    name varchar(255) not null,
    no_of_mobile_app_created int,
    updates int not null,
    PRIMARY key (id),
    FOREIGN Key (updates) REFERENCES DataEngineering(id)
);

Insert into DataEngineering (id, name, no_of_Assignment_completed, is_graduated)
 values (1, 'Muhammad Rameez', 3, 1);


 Select * from DataEngineering;


 Insert into DataEngineering (id, name, no_of_Assignment_completed, is_graduated)
 values (2, 'Muhammad Ali', 3, 0), 
 (3, 'Muhammad Ahsan', 1, 1),
 (4, 'Muhammad Meer', 2, 0),
 (5, 'Muhammad Aslam', 2, 0),
 (6, 'Muhammad Sheroz', 5, 1),
 (7, 'Muhammad Sameer', 4, 1),
 (8, 'Muhammad Malik', 2, 0),
 (9, 'Muhammad Mohsin', 1, 0);


 Insert into MobileApp (id, name, no_of_mobile_app_created, updates)
 values (1, 'M Rameez', 3, 1);

 Select * from MobileApp;


  Insert into MobileApp (id, name, no_of_mobile_app_created, updates)
 values (2, 'M Meer', 3, 4),
 (3, 'M Mohsin', 2, 9),
 (4, 'M Malik', 1, 8),
 (5, 'M Sheroz', 5, 6)
 ;