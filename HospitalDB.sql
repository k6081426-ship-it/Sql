create database HospitalDB;
use HospitalDB;
CREATE TABLE Patient (
    patient_id INT PRIMARY KEY,
    name VARCHAR(100),
    gender CHAR(1),
    phone BIGINT,
    email VARCHAR(100),
    disease VARCHAR(100),
    admit_date DATE,
    admit_time TIME,
    bill DECIMAL(10,2),
    status VARCHAR(20),
    created_at TIMESTAMP,
    notes TEXT,
    is_discharged BOOLEAN
);

INSERT INTO Patient VALUES
(1, 'Arjun', 'M', 9876503333, 'arjun@gmail.com', 'Fever', '2026-04-10', '09:00:00', 5000.00, 'Admitted', CURRENT_TIMESTAMP, 'Under observation', FALSE),
(2, 'Meera', 'F', 9876504444, 'meera@gmail.com', 'Infection', '2026-04-11', '10:00:00', 7000.00, 'Admitted', CURRENT_TIMESTAMP, 'Stable condition', FALSE);
select * from Patient;

CREATE TABLE Doctor (
    doctor_id INT PRIMARY KEY,
    name VARCHAR(100),
    specialization VARCHAR(100),
    gender CHAR(1),
    phone BIGINT,
    email VARCHAR(100),
    experience_years INT,
    salary DECIMAL(10,2),
    join_date DATE,
    shift_time TIME,
    last_login DATETIME,
    created_at TIMESTAMP,
    bio TEXT,
    is_active BOOLEAN
);

INSERT INTO Doctor VALUES
(101, 'Dr. Sharma', 'Cardiologist', 'M', 9876501111, 'sharma@gmail.com', 10, 90000.00, '2015-06-01', '09:00:00', '2026-04-13 08:00:00', CURRENT_TIMESTAMP, 'Heart specialist', TRUE),
(102, 'Dr. Priya', 'Neurologist', 'F', 9876502222, 'priya@gmail.com', 8, 85000.00, '2017-08-10', '10:00:00', '2026-04-13 09:00:00', CURRENT_TIMESTAMP, 'Brain specialist', TRUE);
show tables;

CREATE TABLE Appointment (
    appointment_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    appointment_time TIME,
    status VARCHAR(20),
    fee DECIMAL(10,2),
    rating FLOAT,
    created_at TIMESTAMP,
    notes TEXT,
    is_completed BOOLEAN
);

INSERT INTO Appointment VALUES
(201, 1, 101, '2026-04-14', '10:00:00', 'Scheduled', 500.00, 4.5, CURRENT_TIMESTAMP, 'First visit', FALSE),
(202, 2, 102, '2026-04-15', '11:00:00', 'Scheduled', 600.00, 4.8, CURRENT_TIMESTAMP, 'Follow-up', FALSE);
show tables;

CREATE TABLE Room (
    room_id INT PRIMARY KEY,
    room_type VARCHAR(50),
    floor INT,
    charge_per_day DECIMAL(10,2),
    status VARCHAR(20),
    capacity INT,
    created_at TIMESTAMP,
    description TEXT,
    is_available BOOLEAN,
    last_cleaned DATETIME
);

INSERT INTO Room VALUES
(301, 'ICU', 3, 5000.00, 'Occupied', 1, CURRENT_TIMESTAMP, 'Critical care unit', FALSE, '2026-04-13 07:00:00'),
(302, 'General', 2, 1500.00, 'Available', 4, CURRENT_TIMESTAMP, 'General ward', TRUE, '2026-04-13 06:00:00');
show tables;

CREATE TABLE Billing (
    bill_id INT PRIMARY KEY,
    patient_id INT,
    total_amount DECIMAL(10,2),
    paid_amount DECIMAL(10,2),
    payment_method VARCHAR(50),
    bill_date DATE,
    bill_time TIME,
    discount FLOAT,
    status VARCHAR(20),
    created_at TIMESTAMP,
    remarks TEXT,
    is_paid BOOLEAN
);

INSERT INTO Billing VALUES
(401, 1, 5000.00, 3000.00, 'Cash', '2026-04-12', '12:00:00', 10.0, 'Partial', CURRENT_TIMESTAMP, 'Pending balance', FALSE),
(402, 2, 7000.00, 7000.00, 'Card', '2026-04-12', '12:30:00', 0.0, 'Paid', CURRENT_TIMESTAMP, 'Fully paid', TRUE);
show tables;