
         --Creating Table--
CREATE TABLE STUDENT(
ROLLNUM INT PRIMARY KEY IDENTITY(1,1),
STUD_NAME VARCHAR(25) NOT NULL,
COURSE VARCHAR(25) UNIQUE);

        --Inserting Multiple Rows using single insert Statement--
SET IDENTITY_INSERT STUDENT ON;
INSERT INTO STUDENT (
    ROLLNUM,
    STUD_NAME,
    COURSE
)
VALUES
    (
        001,
		'Aabra Malik',
        'Computer Arts'
    ),
    (
        002,
		'Fatima Shah',
        'Computer Science'
    ),
    (
        003,
		'Tehreem Fatima',
        'HCI'
    );

SELECT * FROM STUDENT;

---deleting rows from a table having certain values certain value--
	DELETE  FROM STUDENT WHERE  ROLLNUM = 001;


	--updating records--
	UPDATE STUDENT
    SET COURSE = 'Computer Arts'
    WHERE STUD_NAME = 'Fatima Shah';
