--Inserting values in a table
INSERT INTO clients
(
	ClientID,
	ClientNames,
	Emails,
	Addresses,
	Age
)
VALUES 
(1,'hamza','hamza.sample@gmail.com','Lahore',25),
(2,'Akbar','akbar.sample@gmail.com','Pindi',25),
(3,'Alina','alina.sample@gmail.com','KPK',25),
(4,'Adil','adil.sample@gmail.com','Lahore',25),
(5,'hamid','hamid.sample@gmail.com','Karachi',27)

--Getting view of what have been inserted
SELECT * FROM clients

--Ages got inserted wrong, so updating ages in clients table
UPDATE clients
SET Age = 30
WHERE ClientID = 1
UPDATE clients
SET Age = 40
WHERE ClientID = 2
UPDATE clients
SET Age = 35
WHERE ClientID = 3
UPDATE clients
SET Age = 23
WHERE ClientID = 4
UPDATE clients
SET Age = 37
WHERE ClientID = 5

--Getting view of what have been updated
SELECT * FROM clients

--As Client with ClientID = 5 is not a client anymore so deleting its record.
--It does help to reduce extra consumption of memorey 
DELETE  FROM clients WHERE ClientID = 5

--That was usage of delete which delete perticular row, While truncate is used to delete all data
TRUNCATE TABLE clients