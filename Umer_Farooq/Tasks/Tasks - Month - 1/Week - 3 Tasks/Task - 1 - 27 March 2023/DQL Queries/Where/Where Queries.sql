-- WHERE:

-- WHERE is used to Filter based on both text and numeric values in a table.
-- Where is used to describe a condition while we get data from a table or tables.
-- It can be used with logical and comparison operators.

-- Does Not Support:
-- 1. Where Clasue does not support the column aliases under the select command.
-- 2. The Aggregate functions (avg, count, max, sum etc) are not allowed in Where.

-- Text based condition:
SELECT name, code, capital, continent
FROM countries
Where continent = 'Asia';

-- Numeric based condition:
SELECT