/*Identity*/

CREATE TABLE ExampleTable (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(50)
);

/*Creating a table from another table*/
INSERT INTO ExampleTable (Name) VALUES ('John');
INSERT INTO ExampleTable (Name) VALUES ('Jane');
INSERT INTO ExampleTable (Name) VALUES ('Bob');

CREATE TABLE ExampleTable2 (
    ID INT PRIMARY KEY,
    Name VARCHAR(50)
);

INSERT INTO ExampleTable2 (ID, Name)
SELECT ID, Name FROM ExampleTable WHERE ID > 1;

/*Inserting rows from one table to another*/
CREATE TABLE ExampleTable3 (
    ID INT PRIMARY KEY,
    Address VARCHAR(100)
);

INSERT INTO ExampleTable3 (ID, Address)
SELECT t1.ID, t2.Address;
FROM ExampleTable t1
JOIN AnotherTable t2 ON t1.ID = t2.ID;

/*update*/
CREATE TABLE ExampleTable (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT
);

INSERT INTO ExampleTable (ID, Name, Age) VALUES (1, 'John', 25);
INSERT INTO ExampleTable (ID, Name, Age) VALUES (2, 'Jane', 30);
INSERT INTO ExampleTable (ID, Name, Age) VALUES (3, 'Bob', 40);

UPDATE ExampleTable
SET Age = 35
WHERE Name = 'Jane';

/*delete*/
CREATE TABLE ExampleTable (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT
);

INSERT INTO ExampleTable (ID, Name, Age) VALUES (1, 'John', 25);
INSERT INTO ExampleTable (ID, Name, Age) VALUES (2, 'Jane', 30);
INSERT INTO ExampleTable (ID, Name, Age) VALUES (3, 'Bob', 40);

DELETE FROM ExampleTable
WHERE Name = 'Bob';

/*truncate*/
TRUNCATE TABLE ExampleTable;

