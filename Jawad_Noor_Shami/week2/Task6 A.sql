<<<<<<< HEAD

CREATE TABLE DE
(
    order_id INT PRIMARY KEY,
    customer_id INT,
	name VARCHAR(50) NOT NULL,
    order_date DATE,
	status VARCHAR(20) DEFAULT 'New',
	gender VARCHAR(10) CHECK (gender IN ('Male', 'Female', 'Other')),
    FOREIGN KEY (customer_id) REFERENCES customers(id)

);

CREATE TABLE Agfow
(
    id INT PRIMARY KEY,
    email VARCHAR(50) UNIQUE,
    phone VARCHAR(15)
=======

CREATE TABLE DE
(
    order_id INT PRIMARY KEY,
    customer_id INT,
	name VARCHAR(50) NOT NULL,
    order_date DATE,
	status VARCHAR(20) DEFAULT 'New',
	gender VARCHAR(10) CHECK (gender IN ('Male', 'Female', 'Other')),
    FOREIGN KEY (customer_id) REFERENCES customers(id)

);

CREATE TABLE Agfow
(
    id INT PRIMARY KEY,
    email VARCHAR(50) UNIQUE,
    phone VARCHAR(15)
>>>>>>> 49d7ad174ac698221d6820b90a6b15110095bc4e
);