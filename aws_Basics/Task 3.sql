
/*Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.*/
SELECT * FROM CITY WHERE COUNTRYCODE='USA' AND POPULATION >100000

/*Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than 38.7880 and less than 137.2345. Truncate your answer to  decimal places.*/
SELECT TRUNCATE(sum(LAT_N),4) from station where LAT_N >38.7880 and LAT_N<137.2345;
/*
Query the following two values from the STATION table:
The sum of all values in LAT_N rounded to a scale of 2 decimal places.
The sum of all values in LONG_W rounded to a scale of 2 decimal places.*/

SELECT ROUND(SUM(LAT_N), 2) , ROUND(SUM(LONG_W), 2) FROM STATION;
/*We define an employee's total earnings to be their monthly (salary * months) worked, and the maximum total earnings to be the maximum total 
earnings for any employee in the Employee table. Write a query to find the maximum total earnings
for all employees as well as the total number of employees who have maximum total earnings. 
Then print these values as 2 space-separated integers.*/
SELECT MAX(salary * months) as maxSal,COUNT(employee_id) AS num_employees FROM employee 
WHERE salary * months  =(SELECT MAX(salary * months)FROM employee) ;

/*Write a query identifying the type of each record in the TRIANGLES table using its three side lengths.*/
SELECT CASE WHEN (A + B) <= C OR (A + C) <= B OR (B + C) <= A THEN 'Not A Triangle'
WHEN A = B  AND B = C THEN 'Equilateral'
WHEN A = B OR A = C OR B = C THEN 'Isosceles'
 WHEN A != B AND A != C AND B != C THEN 'Scalene'
 END AS triangleType FROM TRIANGLES

/*Query the Manhattan Distance between points P1 and P2 and round it to a scale of 4 decimal places*/
SELECT ROUND(ABS(MIN(LAT_N)-MAX(LAT_N))+(ABS(MIN(LONG_W)-MAX(LONG_W))),4)FROM STATION;
/*Query the average population for all cities in CITY, rounded down to the nearest integer.*/
SELECT ROUND(AVG(POPULATION)) FROM CITY;
/*
Query the difference between the maximum and minimum populations in CITY.*/
SELECT (MAX(POPULATION)-MIN(POPULATION)) FROM CITY;

/*Julia asked her students to create some coding challenges. Write a query to print the hacker_id,
 name, and the total number of challenges created by each student. Sort your results by the total
 number of challenges in descending order. If more than one student created the same number of challenges, then sort the result by hacker_id. If more than one student created the same number of challenges and the count is less 
than the maximum number of challenges created, then exclude those students from the result.*/
with count_challenge as (
SELECT hacker_id, count(distinct challenge_id)  as nb_challenge
FROM Challenges 
GROUP BY hacker_id
),
max_challenge as (
SELECT hacker_id,nb_challenge, count(*) OVER (PARTITION BY nb_challenge) as nb_duplicate,
    max(nb_challenge) OVER() as max_nb_challenge
FROM count_challenge
)
SELECT H.hacker_id, H.Name, m.nb_challenge
FROM max_challenge m
        INNER JOIN Hackers H ON m.hacker_id = H.hacker_id
WHERE (nb_duplicate = 1 or nb_challenge = max_nb_challenge)
ORDER BY nb_challenge DESC, H.hacker_id 

/*The total score of a hacker is the sum of their maximum scores for all of the challenges.
 Write a query to print the hacker_id, name, and total score of the hackers ordered by the 
descending score. If more than one hacker achieved the same total score, then sort the result by
 ascending hacker_id.
 Exclude all hackers with a total score of  from your result.*/

with max_challenge_score as (
SELECT H.hacker_id, H.name, S.challenge_id,max(score) as score_max
FROM Hackers H
        INNER JOIN Submissions S ON H.hacker_id = S.hacker_id
GROUP BY H.hacker_id, H.name, S.challenge_id
)
SELECT hacker_id, name, sum(score_max) AS totalpoints
FROM max_challenge_score 
GROUP BY  hacker_id, name
HAVING sum(score_max) > 0
ORDER BY totalpoints DESC,hacker_id ASC