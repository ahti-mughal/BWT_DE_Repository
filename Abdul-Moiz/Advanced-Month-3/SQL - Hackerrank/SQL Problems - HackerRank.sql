-- Solution of SQL Problems in HackerRank


-- Problem : "Revising the Select Query I"
-- Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.
select * from city where population > 100000 and countrycode ="USA";


-- Problem : "Revising the Select Query II"
-- Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.
select name from city where population > 120000 and countrycode = "USA";


-- Problem : "Select All"
-- Query all columns (attributes) for every row in the CITY table
select * from city;


-- Problem : "Select By ID"
-- Query all columns for a city in CITY with the ID 1661.
select * from city where ID = '1661';


-- Problem : "Japanese Cities' Attributes"
-- Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.
select * from city where countrycode = 'JPN';