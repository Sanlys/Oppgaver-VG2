SHOW DATABASES;
CREATE DATABASE cinema_booking_system;
USE cinema_booking_system;

CREATE TABLE customers(
	id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(45),
    last_name varchar(45) NOT NULL,
    email varchar(45) NOT NULL UNIQUE
);

SHOW TABLES;
DESCRIBE customers;
SELECT * FROM customers;