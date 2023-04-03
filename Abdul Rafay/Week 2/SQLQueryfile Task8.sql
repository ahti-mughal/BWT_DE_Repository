create database task8;


CREATE TABLE sales(
    promotion_id INT PRIMARY KEY IDENTITY (1, 1),
    promotion_name VARCHAR (255) NOT NULL,
    discount NUMERIC (3, 2) DEFAULT 0,
    start_date DATE NOT NULL,
    expired_date DATE NOT NULL
);
   
   ----inserting multiple data using single insert statement
INSERT INTO sales (
    promotion_name,
    discount,
    start_date,
    expired_date
)
VALUES
    (
        '2019 Summer Promotion',
        0.15,
        '20190601',
        '20190901'
    ),
    (
        '2019 Fall Promotion',
        0.20,
        '20191001',
        '20191101'
    ),
    (
        '2019 Winter Promotion',
        0.25,
        '20191201',
        '20200101'
    );

	select* from sales;


	---deleting records of a certain value
	DELETE  FROM sales WHERE  discount=0.15;

	--update records 
	UPDATE sales
    SET promotion_name = 'spring'
    WHERE discount=0.20;
