USE BOOKS
UPDATE BOOKS_DATA
SET author='Prof. Sameul'
WHERE title = 'Chemistry'

INSERT INTO BOOKS_DATA (book_id, title,author,published_year)
VALUES (3,'Additional Mathematics', 'Yep Bin Har',1998), 
( 4,'Mathemtics', 'Kim Jin Li',2001), 
( 5,'Physics', 'Kun Bin Sir',2008), 
( 6,'Calculus', 'Dr. Chris Kamel',1989);

/*
DELETE COMMAND 
*/

DELETE FROM BOOKS_DATA WHERE published_year > 2005 --THIS COMMAND WILL DELETE ALL ROWS FROM THE BOOKS_DATA WHERE 'published_year ' is after 2005











