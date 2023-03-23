/*Creating DB*/
Create Database DemoData

/*Using Created DataBase*/
use DemoData;

/*Creating Table*/
/*Following is the Syntax*/
/*Variable DataType(Parameter) Constraint*/
CREATE TABLE Employes (
  emp_id INT NOT NULL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL ,
    email VARCHAR(100) UNIQUE,
    hire_date DATE NOT NULL DEFAULT GETDATE(),
    salary DECIMAL(10, 2) CHECK (salary >= 0),
);
/*Table is created, Check the Structure of Table*/
DESCRIBE Employes;

/*Inserting Values*/
INSERT INTO Employes (emp_id, first_name, last_name, email,salary)
VALUES (4, 'Hamza','Mehmood', 'hza.mehmood513@gmail.com',5000.00), (5, 'Maaz','Mehmood', 'maa.mehmood513@gmail.com',6000.00),
(3, 'M','a', 'maz.mehmood513@gmail.com',6310.00);

/*Adding Constraints by Alter Keyword */
/*Not Null*/
ALTER TABLE Employes
ALTER COLUMN emp_id INT NOT NULL

/*UNIQUE*/
ALTER TABLE Employes
ADD CONSTRAINT UC_Email UNIQUE (email)

/*DEFAULT*/
ALTER TABLE Employes
ADD CONSTRAINT DF_Salary DEFAULT 4000 FOR salary

/*Check*/
ALTER TABLE Employes
ADD CONSTRAINT CK_Salary CHECK (salary > 0)

/*Primary Key*/
ALTER TABLE Employes
ADD CONSTRAINT PK_Employees PRIMARY KEY (emp_id)

/*Foreign Key*/
/*Adding a Constraint name FK_DepartmentID for Column DepartmentID which refers to column DepartmentID From Table Department*/
ALTER TABLE Employes
ADD CONSTRAINT FK_DepartmentID FOREIGN KEY (DepartmentID)
REFERENCES Departments(DepartmentID)

/*Deleting Table*/
DROP TABLE Employe;

/*Altering DB*/
Alter Database DemoData Modify name = HamzaMehmood
/*Altering Database By using system stored procedure*/
sp_renameDB 'HamzaMehmood1','HamzaMehmood3'
/*Dropping DB*/
Drop Database HamzaMehmood3