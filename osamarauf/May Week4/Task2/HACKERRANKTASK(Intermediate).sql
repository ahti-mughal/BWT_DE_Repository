-- Query 1
Select concat(name, '(' ,SUBSTRING(occupation, 1, 1), ')')
from Occupations
order by name ASC;

SELECT CONCAT('There are a total of ', COUNT(*) , ' ', LOWER(Occupation), 's.') AS OccupationCount
FROM OCCUPATIONS
GROUP BY Occupation
ORDER BY COUNT(*) ASC, LOWER(Occupation) ASC;

-- Query 2
