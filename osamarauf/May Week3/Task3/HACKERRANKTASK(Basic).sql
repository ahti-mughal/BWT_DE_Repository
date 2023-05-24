-- Query 1
Select * from city where population > 100000 and countrycode = 'USA';

-- Query 2
Select * from city where countrycode = 'JPN';

-- Query 3
select truncate(sum(lat_n),4) from station where lat_n between 38.7880 and 137.2345;