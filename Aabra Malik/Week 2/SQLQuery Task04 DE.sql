CREATE TABLE STUDENT(ROLLNUM CHAR(10) PRIMARY KEY NOT NULL,
NAME VARCHAR(25),
CLASS VARCHAR(10));

CREATE TABLE TEACHER(TEACHER_ID CHAR(10) PRIMARY KEY NOT NULL,
T_NAME VARCHAR(25),
POST VARCHAR(25));

INSERT INTO STUDENT VALUES('001', 'Aabra Malik', '9TH')
INSERT INTO STUDENT VALUES('002', 'Fatima Shah', '9TH')
INSERT INTO STUDENT VALUES('003', 'Tehreem Fatima', '9TH')

INSERT INTO TEACHER VALUES('V90', 'Sobia', 'Vice Principal')

SELECT * FROM STUDENT;
SELECT * FROM TEACHER;

ALTER DATABASE SchoolDbPractice MODIFY NAME = SchoolDb;
sp_renamedb 'SchoolDb' , 'IslamicSchoolDb'

DROP DATABASE IslamicSchoolDb;