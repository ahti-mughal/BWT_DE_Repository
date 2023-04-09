                                     
									 /* Task 6 Contrainsts in SQL*/

                                     


  /* 1.NOT NULL ON CREATE TABLE*/
  
    CREATE TABLE EMPLOYEE1
	(
	    phonenum int NOT NULL,    /*phonenum should not be null user should enter some value in it*/
		EMPNAME VARCHAR(255) PRIMARY KEY,
		EMPADD CHAR

	);

	/* 1.NOT NULL ON Alter TABLE*/
	alter table EMPLOYEE1
	ALTER COLUMN EMPADD CHAR NOT NULL;

 /////////////////////////////////////////////////////

	/* 2.UNIQUE ON CREATE TABLE*/

	  create table EMPLOYEE3
	  (
	     ENAME VARCHAR(255) NOT NULL UNIQUE,
		 EID INT 
		 
	  );

	  /* 2.ADD COLUMN IN EXISTING TABLE */
	  alter table EMPLOYEE3
	 add empemail char;

	 /* 2.UNIQUE ON ALTER TABLE */
	  ALTER TABLE EMPLOYEE3
	  ADD CONSTRAINT EMP_CONSTRAINT UNIQUE(empemail);

	  /* 2.drop ON ALTER TABLE */
	   alter table EMPLOYEE3
	   DROP CONSTRAINT EMP_CONSTRAINT;

 //////////////////////////////////////////////////////
 /* 3.PRIMARY KEY ON CREATE TABLE */

	   CREATE TABLE EMPLOYEE4
	(
	    phonenum int NOT NULL,    
		EMPNAME VARCHAR(255) PRIMARY KEY,
		EMPADD INT;

	); 
	
	/* 3.PRIMARY KEY ON ALTER TABLE */
	ALTER TABLE EMPLOYEE4
	ADD CONSTRAINT PK_CONSTRAINT EMPADD INT PRIMARY KEY;


    /* 3.PRIMARY KEY ON DROP TABLE */
	ALTER TABLE EMPLOYEE4
	DROP CONSTRAINT PK_CONSTRAINT;

//////////////////////////////////////////////////////

	/* 4.FOREIGN KEY ON CREATE TABLE */

	  CREATE TABLE ORDERS1
	  (
	     orderid int,
		 orderdetails CHAR,
		 EMPNAME VARCHAR(255) FOREIGN KEY REFERENCES EMPLOYEE1(EMPNAME)
	  );

	  /* 4.FOREIGN KEY ON ALTER TABLE */

	  ALTER TABLE orders1
	  add constraint fk_emp
	  foreign key(empname) references EMPLOYEE1(EMPNAME);

	   /* 4.FOREIGN KEY ON drop TABLE */

		  alter table orders1
		  drop constraint fk_emp;
		  
//////////////////////////////////////////////////////

  
	  /* 5.CHECK CONSTRAINT ON CREATE TABLE */
            
          CREATE TABLE ORDERS2
	  (
	     orderNUM int,
		 CITY VARCHAR (100),
		 AGE INT CHECK (AGE>=18)

		 
	  );

	   /* 5.CHECK CONSTRAINT ON CREATE TABLE */
	      CREATE TABLE ORDERS2
	  (
	     orderNUM int,
		 CITY VARCHAR (100),
		 AGE INT,
		 CONSTRAINT CHK_CON CHECK (AGE>=18 AND CITY='PINDI')
	  );
	   

	   /* 5.CHECK CONSTRAINT ON ALTER TABLE */
	   alter table orders2
	   add constraint chk_con check(AGE>=18 AND CITY='PINDI');

	   /* 6.CHECK CONSTRAINT ON DROP TABLE */
	   alter table orders2
	   drop constraint chk_con;
		  
//////////////////////////////////////////////////////	 

      /* 6.default CONSTRAINT ON CREATE TABLE */
	   CREATE TABLE ORDERS4
	  (
	     orderNUM int,
		 CITY VARCHAR (100),
		 AGE INT DEFAULT '18'
		 
	  );
	   
	  /* 6.default CONSTRAINT ON ALTER TABLE */
	  ALTER TABLE ORDERS4
	  ADD CONSTRAINT CHK_CON
	  DEFAULT 'PINDI' FOR CITY;

	  /* 6.CHECK CONSTRAINT ON DROP TABLE */
	   alter table orders4
	   drop constraint chk_con;

//////////////////////////////////////////////////////	

       /* 7.alter TABLE */
	      alter table orders2
		  add food varchar(255);
       
    /* 7.Delete TABLE */
         drop table orders4;
		
		 
		
  