
						/*TASK 7 Practice following DML commands in SSMS*/


	/* 1. INSERT:*/
	
	/* Identity */

	 select * from ORDERS2;

	insert into ORDERS2 values (12, 34, 'mini');

	/* Creating a table from another table */

    SELECT 
	 *
	INTO person
	FROM ORDERS2;

	select * from person;
  

	/* Inserting rows from one table to another */
	 
	 insert into person
     SELECT * FROM ORDERS2;

////////////////////////////////////////////////////////////////

	 /* 2. update a single column:*/

	 update orders2
	 set ordernum=13
	 where food='mini'

	 select * from orders2;

	 /* 1. updates all  column:*/
	 update person 
	 set food='pasta';

////////////////////////////////////////////////////////////////

   /* 3. Difference between delete & truncate:*/

        delete from orders2;
		/*it removes all or specific rows from table this means that the table structure,
		attributes, and indexes will be intact
		you can specify which rows to delete by using where clause*/


		drop table person;
		/*The DROP Command drops the complete table from the database*/

		truncate table orders2;
		/*The TRUNCATE TABLE command deletes the data inside a table, but not the table itself.
		column namae remains there.*/


///////////////////////////////////////////////////////////////


					/*TASK 8 Write the following queries:*/

	/*1 - Write an SQL query to insert multiple rows into a table using a single INSERT statement.*/

	insert into person values(12,13,'mini');
	insert into person values(13,14,'pasta');

 /*2 -Write an SQL query to delete all the rows from a table that have a certain value in a column.*/

        delete from person where food='pasta';

        select * from person;

   /*3 - Write an SQL query to delete all the rows from a 
   table that have a certain value in a column, and 
   that meet a certain condition in another column.*/

   
   delete from person where food='pasta' and ordernum<14;
   select * from person;

   /*4 - Write an SQL query to update multiple columns in a 
   table based on a condition using the UPDATE statement.*/

      update person
	  set age=14 
	  where food='mini';