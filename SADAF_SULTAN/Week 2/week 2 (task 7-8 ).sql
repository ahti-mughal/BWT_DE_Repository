/*---------------- TASK 7 ----------------*/
/* DRIVER TABLE*/
CREATE TABLE DRIVR
(
ID  int identity primary key,
driverName            VARCHAR(50) NOT NULL,
drivingLicenseNum     VARCHAR(50) NOT NULL ,
CNIC                  VARCHAR(50) NOT NULL ,
Rating                REAL                        CHECK (Rating BETWEEN 0 AND 5)
);

/* INSERT DATA INTO TABLE*/
INSERT INTO DRIVR ( driverName, drivingLicenseNum, CNIC, Rating) VALUES ('ASAD',34666,34302-5667676-0,4),
('MUNEEB',34666,34302-5667676-0,4),
('AAMIR',78877,67654-5678654-0,3)

/*SELECT DIFFERENT DATA */
SELECT ID, driverName, Rating INTO Driver_Data FROM DRIVR
SELECT * FROM Driver_Data
SELECT * FROM DRIVR

INSERT INTO Driver_Data ( driverName, Rating )VALUES ('QAMAR',4),('ZAIN',3),('SADAF',2)

UPDATE DRIVR SET Rating=123 WHERE driverName='ASAD'
UPDATE Driver_Data SET driverName= 'MUSKAN' WHERE Rating= 4

DELETE FROM Driver_Data WHERE  Rating=2
DELETE FROM DRIVR WHERE CNIC = 45678-2345678-0

TRUNCATE TABLE Driver_Data
DROP TABLE Driver_Data

/*----------------------------- TASK 8 ----------------------------------------------------*/

INSERT INTO Driver_Data( driverName,Rating ) VALUES ( 'AAMAR',5),('AUON',1),('ADAF',2)

DELETE FROM Driver_Data WHERE ID=89
DELETE FROM Driver_Data WHERE driverName='AUON' and Rating = 1


UPDATE Driver_Data SET driverName= 'ADAF' WHERE Rating = 3




