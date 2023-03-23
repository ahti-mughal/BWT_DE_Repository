/* DRIVER TABLE*/
CREATE TABLE DRIVER
(
driverName            VARCHAR(50) NOT NULL,
drivingLicenseNum     VARCHAR(50) NOT NULL UNIQUE CHECK ( drivingLicenseNum like '[0-9][0-9][0-9][0-9][0-9]') ,
CNIC                  VARCHAR(50) NOT NULL UNIQUE CHECK (CNIC like '_%_%_%_%_%-_%_%_%_%_%_%_%-_%'),
Rating                REAL                        CHECK (Rating BETWEEN 0 AND 5),
primary key (drivingLicenseNum)
);
/* VEHICLE TABLE*/
CREATE TABLE VEHICLE
(
VehicleNum           VARCHAR(50) CHECK (VehicleNum like '[A-Z][A-Z][A-Z]%-[0-9][0-9][0-9][0-9]%') ,
 VehicleLicenseNum   VARCHAR(50) CHECK ( VehicleLicenseNum like '[0-9][0-9][0-9][0-9][0-9][0-9]') not null UNIQUE,
 Model               VARCHAR(50),
 Color               VARCHAR(50),
 Category            VARCHAR(50) CHECK( Category IN ('Bike','Go Mini','Go','Go+','Business'))not null,
 drivingLicenseNum   VARCHAR(50) CHECK ( drivingLicenseNum like '[0-9][0-9][0-9][0-9][0-9]') REFERENCES DRIVER(drivingLicenseNum),
 PRIMARY KEY (VehicleNum)
 );
 /* ALTER TABLE */
 ALTER TABLE VEHICLE 
 DROP COLUMN Model;
 /* DELETE TABLE*/
 DROP TABLE VEHICLE;