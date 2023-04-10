-- Write an SQL query to delete all the rows from a table that have a certain value in a column.
-- Lets create a Table:

CREATE TABLE Country (
   ID INT IDENTITY(1,1) PRIMARY KEY,
   Name VARCHAR(50),
   HeadOfState VARCHAR(50),
   Capital VARCHAR(50),
   Continent VARCHAR(50),
   Currency VARCHAR(50),
   Population BIGINT,
   GDP BIGINT
);
INSERT INTO Country (Name, HeadOfState, Capital, Continent, Currency, Population, GDP)
VALUES 
   ('United States', 'Joe Biden', 'Washington, D.C.', 'North America', 'US Dollar', 331449281, 21427700),
   ('Canada', 'Justin Trudeau', 'Ottawa', 'North America', 'Canadian Dollar', 38005238, 1731050),
   ('Mexico', 'Andrés Manuel López Obrador', 'Mexico City', 'North America', 'Mexican Peso', 130222815, 1212000),
   ('Brazil', 'Jair Bolsonaro', 'Brasília', 'South America', 'Brazilian Real', 213445417, 2146900),
   ('Argentina', 'Alberto Fernández', 'Buenos Aires', 'South America', 'Argentine Peso', 45605856, 445700),
   ('China', 'Xi Jinping', 'Beijing', 'Asia', 'Renminbi', 1411778724, 14956000),
   ('India', 'Ram Nath Kovind', 'New Delhi', 'Asia', 'Indian Rupee', 1393313450, 2959700),
   ('Japan', 'Naruhito', 'Tokyo', 'Asia', 'Japanese Yen', 126264931, 5170000),
   ('Russia', 'Vladimir Putin', 'Moscow', 'Europe', 'Russian Ruble', 144096812, 1686700),
   ('Germany', 'Frank-Walter Steinmeier', 'Berlin', 'Europe', 'Euro', 83132799, 3979000),
   ('United Kingdom', 'Elizabeth II', 'London', 'Europe', 'Pound Sterling', 67886004, 2622438),
   ('South Africa', 'Cyril Ramaphosa', 'Pretoria', 'Africa', 'South African Rand', 60058604, 283400),
   ('Nigeria', 'Muhammadu Buhari', 'Abuja', 'Africa', 'Nigerian Naira', 211400708, 448100),
   ('Egypt', 'Abdel Fattah el-Sisi', 'Cairo', 'Africa', 'Egyptian Pound', 104258327, 303000),
   ('Australia', 'Scott Morrison', 'Canberra', 'Australia/Oceania', 'Australian Dollar', 25687041, 1572000),
   ('New Zealand', 'Jacinda Ardern', 'Wellington', 'Australia/Oceania', 'New Zealand Dollar', 4985326, 208000);
-- Values Inserted.

-- Our Query
DELETE FROM Country
WHERE Continent = 'Asia';

SELECT * FROM Country 
WHERE Continent = 'Asia';