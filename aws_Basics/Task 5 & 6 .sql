/*Write a query to print all prime numbers less than or equal to 1000 .
Print your result on a single line, and use the ampersand (&) character as your separator
(instead of a space).*/

DECLARE @inputNumber INT=1000

DECLARE @a INT=2,@b INT=2,@count INT=0,@c INT=0,
@PrimeNumberList NVARCHAR(MAX);

WHILE @a<=@inputNumber 
BEGIN
SET @count=0; 
SET @b=2;

WHILE @b<1000
BEGIN

IF (@a%@b=0)
BEGIN SET @Count=@count+1
END

SET @b=@b+1;

END

IF(@count=1 and @c<1)
BEGIN
SET @PrimeNumberList  = CAST(@a AS NVARCHAR(MAX));
SET @c=@c+1;
END

ELSE
BEGIN
IF(@count=1)
BEGIN
SET @PrimeNumberList=@PrimeNumberList+'&'+CAST(@a AS NVARCHAR(MAX));
END
END

SET @a=@a+1; 
END

PRINT @PrimeNumberList


/*Julia just finished conducting a coding contest, and she needs your help assembling the 
leaderboard! Write a query to print the respective hacker_id and name of hackers who achieved 
full scores for more than one challenge. Order your output in descending order by the total number 
of challenges in which the hacker earned a full score. If more than one 
hacker received full scores in same number of challenges, then sort them by ascending hacker_id.*/

select h.hacker_id, h.name 
from Submissions as s join Hackers as h 
on s.hacker_id = h.hacker_id 
join Challenges as c on s.challenge_id = c.challenge_id
join Difficulty as d on c.Difficulty_level = d.Difficulty_level
where s.score = d.score 
group by h.hacker_id, h.name
having count(*) > 1
order by count(*) desc, h.hacker_id ;

/*Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.*/
SELECT * FROM CITY WHERE COUNTRYCODE ='JPN';

/*Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA. */
SELECT NAME FROM CITY WHERE COUNTRYCODE ='USA' AND POPULATION >120000;

/*Julia asked her students to create some coding challenges. Write a query to print the hacker_id, name, and the
total number of challenges created by each student. Sort your results by the total number of challenges in 
descending order. If more than one student created the same number of challenges, then sort the result by 
hacker_id. If more than one student created the same number of challenges and the count is less than the 
maximum number of challenges created, then exclude those students from the result.*/
 
WITH counter AS(
SELECT hackers.hacker_id
, hackers.name
, COUNT(challenge_id) AS challenges_created
FROM Challenges
INNER JOIN Hackers ON Challenges.hacker_id = Hackers.hacker_id
GROUP BY hackers.hacker_id, hackers.name
)

SELECT hacker_id ,name,challenges_created
FROM counter
WHERE challenges_created = (SELECT MAX(challenges_created) FROM counter)
OR challenges_created IN (SELECT challenges_created
                         FROM counter
                         GROUP BY challenges_created
                         HAVING COUNT(challenges_created) = 1)
ORDER BY  challenges_created DESC,  hacker_id