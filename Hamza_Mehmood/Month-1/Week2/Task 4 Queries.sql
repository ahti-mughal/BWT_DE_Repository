/*Creating DB*/
Create Database Hamza
/*Altering DB*/
Alter Database Hamza Modify name = HamzaMehmood
/*Altering Database By using system stored procedure*/
sp_renameDB 'HamzaMehmood1','HamzaMehmood3'
/*Dropping DB*/
Drop Database HamzaMehmood3