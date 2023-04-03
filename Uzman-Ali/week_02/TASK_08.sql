CREATE DATABASE QUESTIONS_TASKS
-->FIRST---> ANSWERING MULTIPLE QUESTIONS IN FROM OF QUERIES

/*Q.1:   Write an SQL query to insert multiple rows into a table 
         using a single INSERT statement.       */

INSERT INTO RANDOM_TABLE VALUES
('HASAN ALI', 'MUSLIM', 'SINGLE'),
('JAMEBOND', 'CHRISTIAN', 'MARRIED'),
('AKILE ZUFRASHI', 'NONE', 'DO NOT KNOW')

/*Q.2   Write an SQL query to delete all the rows from a table 
        that have a certain value in a column.  */

DELETE FROM RANDOM_TABLE 
WHERE RELIGION= 'NONE'

/*Q.3  Write an SQL query to delete all the rows from a table 
       that have a certain value in a column, and that meet a 
	   certain condition in another column.      */

DELETE FROM RANDOM_TABLE 
WHERE RELIGION= 'NONE' AND MARTIAL_STATUS= 'DO NOT KNOW'

/*Q.3  Write an SQL query to update multiple columns in a table 
       based on a condition using the UPDATE statement.  */

UPDATE 
SET U_NAME= 'FELIX MAXWELL', RELIGION= 'BUDISIAM'
WHERE MARTIAL_STATUS= 'DO NOT KNOW'
