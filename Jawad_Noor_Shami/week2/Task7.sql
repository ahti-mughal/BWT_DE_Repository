--> creating new table

create table custmerdata(

CustmorID int PRIMARY KEY IDENTITY (1,1),
Name VARCHAR(30) ,
Address VARCHAR(30) ,


);

select * from custmerdata;


-- inserting the idenity column

INSERT INTO custmerdata
VALUES ('Jawad','311-E'),
('Arslan','55-D'),
(' Hasan','34-F'),
('Haseeb','55-D'),
('Ahmed','43-A');

select * from custmerdata;

-- Making table

SELECT * INTO Custmor
FROM custmerdata
WHERE Address = '55-D';

select * from Custmor


--  Update Table


UPDATE custmerdata
SET Name = 'Jawad Noor '
WHERE CustmorID = 1;

select * from custmerdata;


--  Truncate table
TRUNCATE TABLE Custmor;
SELECT * FROM Custmor;

--Droping the table 

Drop table custmerdata



