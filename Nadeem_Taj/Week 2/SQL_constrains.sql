use New_Nadeem420 /* Using database I created */
/* Creating a table using SQL Constrains not null and unique  */
Create table Students( student_Id int  not null primary key,
student_name varchar(50) not null,
student_dept varchar(50) not null,
email varchar(100) unique,
student_earning varchar(50) not null
); 
select*from Students

/* inserting data to my created table*/ 

insert into Students values(1, 'usama', 'cs', 'ACB@gmail', 3150000)
insert into Students values(3, 'usama', 'IT', 'cdf', 150000);
/* added new column in students table*/
alter table Students add students_status varchar(50) not null

/* delete the column */
alter table students drop column students_status 

/*delete the table */
drop table Students


 


