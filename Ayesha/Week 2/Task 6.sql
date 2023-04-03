/* Table Creation*/
/* Setting SQL Constarints in Table Creation*/
CREATE TABLE Studenttt (
  reg_no INT PRIMARY KEY NOT NULL ,
    std_Name VARCHAR(50) NOT NULL ,
	University VARCHAR(50) default 'COMSATS' ,
    email VARCHAR(100) UNIQUE,
	age INT CHECK (age >= 18),
	 
);
CREATE TABLE Courseee (
    crs_id INT PRIMARY KEY NOT NULL ,
    crs_Name VARCHAR(50) NOT NULL ,	
	reg_no INT  FOREIGN KEY REFERENCES Studenttt(reg_no)
);


/*Insertion of Values into table */
INSERT INTO Courseee 
VALUES (101,'Database',1);

INSERT INTO Studenttt(reg_no,std_Name,email,age)
VALUES (1, 'Ayesha','ayesha@gmail.com',19);

/*Data retrieval from tables */
SELECT * from Courseee;
SELECT * from Studenttt;

/*Altering Table by adding DateOfBirth column*/ 
ALTER TABLE Studenttt
ADD DateOfBirth date;

DELETE FROM Studenttt;
 
/*Deleting Table*/
DROP TABLE Courseee;
DROP TABLE Studenttt;