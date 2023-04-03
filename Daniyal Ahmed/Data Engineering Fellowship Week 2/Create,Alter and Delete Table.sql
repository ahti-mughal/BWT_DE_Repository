use northwind 
CREATE  TABLE tbl_user(
    user_id int,
	full_name varchar(100),
	gender varchar(10),
	age int

);

SELECT * FROM tbl_newuser
DROP TABLE tbl_newuser
sp_rename'tbl_user','tbl_newuser';
