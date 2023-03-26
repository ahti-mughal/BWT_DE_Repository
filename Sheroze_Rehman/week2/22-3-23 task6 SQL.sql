use BWTDE
CREATE TABLE userInfo(
    StudentID int primary key Not Null ,
    LastName varchar(255) Not Null,
    FirstName varchar(255) Not Null,
    Department varchar(255) Not Null,
	enrollDate date DEFAULT GETDATE(),
	Age int CHECK (Age>=18),
    email varchar(255) Not Null unique
);

CREATE TABLE COURSE(
	COURSENO INT primary key not null,
	studentID int,     
	FOREIGN KEY (studentId) REFERENCES userInfo(StudentID)
);



use BWTDE
ALTER TABLE userInfo
ADD city varchar(255) not null;

CREATE TABLE tesdb(
	COURSENO INT primary key not null,
	studentID int,     
);

DROP TABLE tesdb