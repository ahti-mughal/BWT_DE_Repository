--- SCD Type 1 
CREATE TABLE SCD(
 ID INT PRIMARY KEY,
 Name VARCHAR(25) NOT NULL,
 City VARCHAR(25) NOT NULL,
 From_Date DATE NOT NULL,
 To_Date DATE NOT NULL,
 Status BIT
);


INSERT INTO SCD (ID, Name, City,From_Date, To_Date, Status)
VALUES(123, 'SADAF SULTAN', 'HAFIZABAD', '2019-09-06' ,'2023-09-06', 1),
(234, 'Muqaddas Fatima', 'Islamabad', '2019-09-20','2022-09-02',1),
(345, 'Usman Malik', 'Bahria Town','2013-02-12','2023-05-21',1),
(456, 'Fahad','Mardan','2017-02-04','2023-02-22',1) 



-- SCD Type 2

CREATE TABLE SCD_T2 (
    key_id INT IDENTITY(1,1) PRIMARY KEY,
    ID INT,
    NAME VARCHAR(25) NOT NULL,
    CITY VARCHAR(25) NOT NULL,
    From_Date DATE NOT NULL,
    To_Date DATE NOT NULL,
    Status BIT
);

UPDATE SCD_T2
SET CITY = 'ISLAMBAD', To_Date = GETDATE(), Status=0
WHERE ID = 123;


SELECT *  FROM SCD_T2


INSERT INTO SCD_T2 (ID, NAME, CITY, From_Date, To_Date, Status)
VALUES 
(123, 'Sadaf sultan', 'islamabad', '2020-08-202',GETDATE(),1)

SELECT * FROM SCD_T2

