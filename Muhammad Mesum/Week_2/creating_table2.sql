CREATE DATABASE BOOKS;
GO

USE BOOKS;
GO 

CREATE TABLE BOOKS_DATA 
(
book_id INT PRIMARY KEY,
title VARCHAR(255),
author VARCHAR(255),
published_year INT
);
GO

INSERT INTO BOOKS_DATA (book_id,title,author,published_year)
VALUES (1,'Biology','Lam Peng Kwan',1976);

INSERT INTO BOOKS_DATA (book_id,title,author,published_year)
VALUES (2,'Chemistry','Tan Mei Ling',1998);

SELECT * FROM BOOKS_DATA;


