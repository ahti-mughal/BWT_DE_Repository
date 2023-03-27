--Creating a Course table 

CREATE TABLE Courses (
   CourseID INT PRIMARY KEY,
   CourseName VARCHAR(50) NOT NULL
);


--Creating a Students Table

CREATE TABLE Students (
   StudentID INT PRIMARY KEY,
   FirstName VARCHAR(50) NOT NULL,
   LastName VARCHAR(50) NOT NULL,
   Age INT DEFAULT 18,
   Gender VARCHAR(10) CHECK (Gender IN ('Male', 'Female')),
   Email VARCHAR(50) UNIQUE,
   CourseID INT,
   FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);


INSERT INTO Courses (CourseID, CourseName)
VALUES (1, 'Bytewise Training'), (2, 'Ashas Course');

INSERT INTO Students (StudentID, FirstName, LastName, Age, Gender, Email, CourseID)
VALUES (1, 'Hassan', 'Ashas', 20, 'Male', 'hassanashas@gmail.com', 1);

SELECT * FROM Students WHERE Gender = 'Male';

UPDATE Students SET Age = 21 WHERE StudentID = 1;

SELECT * FROM Students WHERE CourseID = 1;

ALTER TABLE Courses DROP COLUMN CourseName;

DROP TABLE Students;

DROP TABLE Courses;
