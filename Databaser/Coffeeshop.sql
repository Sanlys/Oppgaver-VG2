SHOW DATABASES;
DROP DATABASE coffee_store;
CREATE DATABASE coffee_store;

USE coffee_store;

CREATE TABLE products (
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30),
    price DECIMAL(3, 2),
    coffee_origin VARCHAR (15)
); 

SHOW TABLES;
SELECT * FROM products;

CREATE TABLE customers (
	id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    gender ENUM('M', 'F'),
    phone_number VARCHAR(20)
);

CREATE TABLE orders (
	id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    customer_id INT,
    order_time DATETIME,
    FOREIGN KEY (product_id) REFERENCES products(id),
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);