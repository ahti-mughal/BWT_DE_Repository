/*
Task # 1

Practice following DQL commands in SSMS:

1 - Data Query Language (DQL):
     • select
     • Where clause
     • Order By Clause
     • Distinct Keyword
     • Isnull() function
     • Column aliases
     • Predicates
     		- Between ... And
     		- In
     		- Like
     		- Is Null
     • Top n Clause
     • Set Operators
     		- Union
     		- Intersect
     		- Except
*/

/*
CREATE DATABASE DummyDB;
GO
*/

/*
USE DummyDB;
GO

CREATE TABLE Students (
   StudentID INT PRIMARY KEY,
   Name VARCHAR(50) NOT NULL,
   Age INT NOT NULL,
   Gender CHAR(1) NOT NULL,
   City VARCHAR(50) NOT NULL,
   Country VARCHAR(50) NOT NULL
);
GO

INSERT INTO Students (StudentID, Name, Age, Gender, City, Country)
VALUES (1, 'John Smith', 25, 'M', 'New York', 'USA'),
       (2, 'Mary Johnson', 22, 'F', 'London', 'UK'),
       (3, 'Peter Lee', 30, 'M', 'Toronto', 'Canada'),
       (4, 'Emily Chen', 21, 'F', 'Shanghai', 'China'),
       (5, 'David Kim', 28, 'M', 'Seoul', 'South Korea'),
       (6, 'Anna Wong', 23, 'F', 'Hong Kong', 'China'),
       (7, 'Michael Lee', 26, 'M', 'Sydney', 'Australia'),
       (8, 'Julie Park', 24, 'F', 'Los Angeles', 'USA'),
       (9, 'Kevin Chang', 29, 'M', 'Taipei', 'Taiwan'),
       (10, 'Samantha Chen', 20, 'F', 'Beijing', 'China');
       */

/* SELECT * FROM Students; */

/* SELECT * FROM Students WHERE City = 'New York'; */

/* SELECT * FROM Students ORDER BY Age DESC; */

/* SELECT * FROM Students ORDER BY Age DESC; */

-- SELECT DISTINCT Country FROM Students; 

-- SELECT StudentID, Name, ISNULL(City, 'N/A') AS City, Country 
-- FROM Students;

-- SELECT StudentID, Name AS FullName, Age, Gender, City, Country 
-- FROM Students;

-- SELECT * FROM Students WHERE Age BETWEEN 25 AND 30;

-- SELECT * FROM Students WHERE Country IN ('China', 'Canada');

-- SELECT * FROM Students WHERE Name LIKE 'M%';

-- SELECT * FROM Students WHERE City IS NULL;

-- SELECT TOP 3 * FROM Students ORDER BY Age DESC;

-- SELECT * FROM Students WHERE Country = 'USA'
-- UNION
-- SELECT * FROM Students WHERE Country = 'Canada';

-- SELECT * FROM Students WHERE Country = 'USA'
-- INTERSECT
-- SELECT * FROM Students WHERE City = 'New York';

SELECT * FROM Students WHERE Country = 'USA'
EXCEPT
SELECT * FROM Students WHERE City = 'New York';
