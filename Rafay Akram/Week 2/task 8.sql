INSERT INTO table_name (column1, column2, column3)
VALUES
(value1_1, value1_2, value1_3),
(value2_1, value2_2, value2_3),
(value3_1, value3_2, value3_3);

DELETE FROM table_name
WHERE column_name = 'certain_value';

DELETE FROM table_name
WHERE column1_name = 'certain_value'
AND column2_name > 10;

UPDATE table_name
SET column1_name = 'new_value1', column2_name = 'new_value2'
WHERE condition;

