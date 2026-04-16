create database Ride_Booking;
use Ride_Booking;
CREATE TABLE Riders (
    rider_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone BIGINT UNIQUE,
    rating DECIMAL(2,1) CHECK (rating BETWEEN 0 AND 5),
    city VARCHAR(50) DEFAULT 'Bangalore',
    status VARCHAR(20) DEFAULT 'Active');
desc Riders;
INSERT INTO Riders VALUES (2, 'Asha', 'asha@mail.com', 9876543210, 4.5, 'Bangalore', 'Active');
select * from Riders;
21:34:18	INSERT INTO Riders VALUES (2, 'Asha', 'asha@mail.com', 9876543210, 4.5, 'Bangalore', 'Active')	Error Code: 1062. Duplicate entry 'asha@mail.com' for key 'riders.email'	0.156 sec

CREATE TABLE Drivers (
    driver_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    phone BIGINT UNIQUE,
    license_no VARCHAR(50) UNIQUE,
    vehicle_type VARCHAR(20) CHECK (vehicle_type IN ('Bike','Car','Auto')),
    rating DECIMAL(2,1) CHECK (rating BETWEEN 0 AND 5),
    status VARCHAR(20) DEFAULT 'Available'
);
desc Drivers;
INSERT INTO Drivers VALUES (102, 'Ravi', 9988776655, 'DL12345', 'Car', 4.2, 'Available');
select * from Drivers;
22:27:44	INSERT INTO Drivers VALUES (102, 'Ravi', 9988776655, 'DL12345', 'Car', 4.2, 'Available')	Error Code: 1062. Duplicate entry '9988776655' for key 'drivers.phone'	0.094 sec

CREATE TABLE Rides (
    ride_id INT PRIMARY KEY,
    rider_name VARCHAR(100) NOT NULL,
    driver_name VARCHAR(100),
    pickup_location VARCHAR(100),
    drop_location VARCHAR(100),
    fare DECIMAL(10,2) CHECK (fare >= 0),
    ride_status VARCHAR(20) DEFAULT 'Requested'
);
desc Rides;
INSERT INTO Rides VALUES (202, 'Asha', 'Ravi', 'BTM', 'Whitefield', -50, 'Completed');
select * from Rides;
22:36:40	INSERT INTO Rides VALUES (202, 'Asha', 'Ravi', 'BTM', 'Whitefield', -50, 'Completed')	Error Code: 3819. Check constraint 'rides_chk_1' is violated.	0.000 sec

CREATE TABLE Payments (
    payment_id INT PRIMARY KEY,
    ride_id INT,
    amount DECIMAL(10,2) CHECK (amount > 0),
    method VARCHAR(20) CHECK (method IN ('UPI','Cash','Card')),
    status VARCHAR(20) DEFAULT 'Paid'
);
desc Payments;
INSERT INTO Payments VALUES (301, 201, 300, 'UPI', 'Paid');
select * from Payments;

CREATE TABLE Feedback (
    feedback_id INT PRIMARY KEY,
    rider_name VARCHAR(100),
    driver_name VARCHAR(100),
    rating INT CHECK (rating BETWEEN 1 AND 5),
    comments TEXT,
    feedback_date DATE
);
desc Feedback;
INSERT INTO Feedback VALUES (403, 'Asha', 'Ravi', 6, 'Good ride', '2026-04-15');
select * from Feedback;
02:20:38	INSERT INTO Feedback VALUES (403, 'Asha', 'Ravi', 6, 'Good ride', '2026-04-15')	Error Code: 3819. Check constraint 'feedback_chk_1' is violated.	0.000 sec
