CREATE DATABASE hotel_booking;
USE hotel_booking;

CREATE TABLE users(
id INT AUTO_INCREMENT PRIMARY KEY,
fullname VARCHAR(100),
email VARCHAR(100),
password VARCHAR(255)
);

CREATE TABLE rooms(
id INT AUTO_INCREMENT PRIMARY KEY,
room_number INT,
room_type VARCHAR(50),
price DECIMAL(10,2),
status VARCHAR(20)
);

CREATE TABLE bookings(
id INT AUTO_INCREMENT PRIMARY KEY,
user_id INT,
room_id INT,
check_in DATE,
check_out DATE,
FOREIGN KEY(user_id) REFERENCES users(id),
FOREIGN KEY(room_id) REFERENCES rooms(id)
);

CREATE TABLE payments(
id INT AUTO_INCREMENT PRIMARY KEY,
booking_id INT,
amount DECIMAL(10,2),
payment_date DATE,
FOREIGN KEY(booking_id) REFERENCES bookings(id)
);
