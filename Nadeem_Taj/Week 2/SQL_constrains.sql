use New_Nadeem420 /* Using database I created */
/* Creating a table using SQL Constrains not null and unique  */
Create table Students( student_Id int unique not null,
student_name varchar(50) not null,
student_dept varchar(50) not null,
student_earning varchar(50) not null
); 
select*from Students

/* inserting data to my created table*/ 

insert into Students values(2, 'usama', 'cs', 3150000)
insert into Students values(3, 'usama', 'IT', 150000);
/* added new column in students table*/
alter table Students add students_status varchar(50) not null

/* delete the column */
alter table students drop column students_status 

/*delete the table */
drop table Students



