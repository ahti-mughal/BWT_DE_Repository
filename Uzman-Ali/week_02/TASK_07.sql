CREATE DATABASE DML_TASKS
-->FIRST---> INSERT DML COMMANDS

--1 Creating Table and inserting values to it
CREATE TABLE IamBytewiser
(U_NAME varchar(50) NOT NULL,
TRACK_ID FLOAT NOT NULL PRIMARY KEY,
TRAITE varchar(50) CHECK (TRAITE LIKE 'PROUD' OR TRAITE LIKE 'PUNCTUAL' OR TRAITE LIKE 'GENIUS' OR TRAITE LIKE '')
);

INSERT INTO IamBytewiser VALUES(
'UZMAN ALI', 000.1, 'PUNCTUAL'),
('AHMED ALI', 12.3, 'PUNCTUAL')

SELECT * FROM IamBytewiser

--2 Creating table from an other table
SELECT * INTO IAMCOPY FROM IamBytewiser;

--3 Inserting rows into Table from another Table
INSERT INTO IAMDOUBLE (TRACK_ID)
SELECT TRACK_ID FROM IamBytewiser

SELECT * FROM IAMCOPY

--->SECOND---> UPDATE DML COMMANDS

--1 UPDATING/ALTERING VALUES INSIDE TABLES
UPDATE
SET U_NAME = 'AHTISHAM ENGINEER' --JUST TO CHECK MY FILE ARE BEING READ OR NOT
WHERE TRACK_ID= 12.3

SELECT * FROM IamBytewiser

--->THIRD---> DELETE DML COMMANDS

--1 Deleting Data of Table using Delete & Truncate Commands
DELETE FROM IamBytewiser
WHERE TRAITE ='PUNCTUAL'

SELECT * FROM IamBytewiser

--TRUNCATING DATA
TRUNCATE TABLE IAMCOPY

--2 What is the main difference between Delete & Truncate?
TRUNCATE: --It's a DML Command use to delete/erase data from tables(data not structure).
DELETE:-- It's a DML Command use to delete data or structure from DataBase.
