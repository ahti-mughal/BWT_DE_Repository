--Query the sum of the populations of all cities where the CONTINENT is 'Asia'.

select sum(c.population) from city c join country ct on c.countrycode=ct.code where ct.continent='Asia';

--query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.

select ct.continent, floor(avg(c.population)) from city c join country ct on c.countrycode=ct.code group by ct.continent; 