SELECT * INTO CyberSecurity
FROM DataEngineering;


SELECT * INTO CyberCrokes
FROM DataEngineering where no_of_Assignment_completed > 3;

SELECT * from CyberSecurity;

SELECT * from CyberCrokes;


Create Table Toppers(
    name VARCHAR (255) not null,
    no_of_Assignment_completed int not null,
    grade VARCHAR (255)
);

INSERT INTO Toppers (name, no_of_Assignment_completed)
SELECT name, no_of_mobile_app_created FROM MobileApp where no_of_mobile_app_created > 3;


INSERT INTO Toppers (name, no_of_Assignment_completed)
SELECT name, no_of_Assignment_completed FROM DataEngineering where no_of_Assignment_completed > 3;

INsert into Toppers (name, no_of_Assignment_completed, grade)
values ('Ahtisham Sir', 6, 'A+')

select * from Toppers;

UPDATE Toppers
SET Grade = CASE
    WHEN no_of_Assignment_completed > 4 THEN 'A'
    ELSE 'B'
END
WHERE no_of_Assignment_completed IS NOT NULL;


UPDATE Toppers
SET Grade = CASE
    WHEN no_of_Assignment_completed > 5 THEN 'A+'
    WHEN no_of_Assignment_completed > 4 THEN 'A'
    ELSE 'B'
END
WHERE no_of_Assignment_completed IS NOT NULL;


Truncate Table CyberCrokes;

SELECT * from CyberCrokes;