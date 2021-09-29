SHOW DATABASES;
CREATE DATABASE cinema_booking_system;
USE cinema_booking_system;

CREATE TABLE seats(
	id INT PRIMARY KEY AUTO_INCREMENT,
    row CHAR(1) NOT NULL,
    number INT NOT NULL,
    room_id INT NOT NULL,
    FOREIGN KEY (room_id) REFERENCES rooms(id)
);

SHOW TABLES;
DESCRIBE seats;
SELECT * FROM seats;