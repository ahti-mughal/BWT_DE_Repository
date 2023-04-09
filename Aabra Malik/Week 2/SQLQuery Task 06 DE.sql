               --Creating Student Table--
CREATE TABLE STUDENT(ROLLNUM CHAR(10) PRIMARY KEY NOT NULL,
NAME VARCHAR(25),
CLASS VARCHAR(10));

                 --Creating Teacher Table--
CREATE TABLE TEACHER(TEACHER_ID CHAR(10) PRIMARY KEY NOT NULL,
T_NAME VARCHAR(25),
POST VARCHAR(25));

                 --Inserting Rows in Student Table--
INSERT INTO STUDENT VALUES('001', 'Aabra Malik', '9TH')
INSERT INTO STUDENT VALUES('002', 'Fatima Shah', '9TH')
INSERT INTO STUDENT VALUES('003', 'Tehreem Fatima', '9TH')

                  --Inserting Rows in Teacher Table--
INSERT INTO TEACHER VALUES('V90', 'Sobia', 'Vice Principal')
INSERT INTO TEACHER VALUES('S799', 'Ali', 'Sports')

                  --Viewing Tables--
SELECT * FROM STUDENT;
SELECT * FROM TEACHER;

                  --Altering Table--
ALTER TABLE STUDENT ADD FEES CHAR(15)
EXEC sp_rename 'STUDENT.NAME', 'S_NAME', 'COLUMN'

DROP TABLE STUDENT

           --Constraints
CREATE TABLE STAFF(
ID INT NOT NULL UNIQUE,
NamE VARCHAR(30) NOT NULL,
age int
);

    
CREATE TABLE SCHOOL_STAFF(
ID INT NOT NULL UNIQUE,
NamE VARCHAR(30) NOT NULL,
age int,
check (age>=18)
);


