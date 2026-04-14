create database companyEmployees;
use companyEmployees;
CREATE TABLE Employee_Details (
    emp_id INT PRIMARY KEY,           
    first_name VARCHAR(50),              
    last_name VARCHAR(50),               
    gender CHAR(1),                    
    email VARCHAR(100),                  
    phone BIGINT,                        
    salary DECIMAL(10,2),                
    bonus FLOAT,                       
    joining_date DATE,                
    joining_time TIME,                   
    last_login DATETIME,                 
    created_at TIMESTAMP,
    profile_text TEXT                    
);
INSERT INTO Employee_Details VALUES
(1, 'Ravi', 'Kumar', 'M', 'ravi@gmail.com', 9876543210, 45000.50, 1500.75, '2022-05-10', '09:30:00', '2026-04-10 10:15:20', CURRENT_TIMESTAMP, 'Good employee'),
(2, 'Sneha', 'Patel', 'F', 'sneha@gmail.com', 9123456780, 55000.00, 2000.50, '2021-03-15', '10:00:00', '2026-04-12 11:20:10', CURRENT_TIMESTAMP, 'Team leader');
select * from Employee_Details;

CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(100),
    budget DECIMAL(12,2),
    head_emp_id INT,
    phone BIGINT,
    email VARCHAR(100),
    established_date DATE,
    created_at TIMESTAMP,
    rating FLOAT,
    is_active BOOLEAN,
    description TEXT,
    office_time TIME
);

INSERT INTO Department VALUES
(101, 'IT', 'Bangalore', 5000000.00, 1, 9876500001, 'it@company.com', '2015-01-01', CURRENT_TIMESTAMP, 4.5, TRUE, 'Handles software projects', '09:00:00'),
(102, 'HR', 'Mysore', 2000000.00, 2, 9876500002, 'hr@company.com', '2016-02-01', CURRENT_TIMESTAMP, 4.2, TRUE, 'Manages employees', '09:30:00');
show tables;

CREATE TABLE Project (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    start_date DATE,
    end_date DATE,
    budget DECIMAL(12,2),
    progress FLOAT,
    client_name VARCHAR(100),
    client_phone BIGINT,
    status VARCHAR(20),
    created_at TIMESTAMP,
    last_update DATETIME,
    description TEXT,
    is_completed BOOLEAN
);

INSERT INTO Project VALUES
(201, 'Website Development', '2025-01-10', '2026-06-10', 1000000.00, 70.5, 'ABC Corp', 9876543210, 'Running', CURRENT_TIMESTAMP, '2026-04-12 10:00:00', 'E-commerce website', FALSE),
(202, 'Mobile App', '2024-05-01', '2025-12-31', 1500000.00, 85.0, 'XYZ Ltd', 9876543215, 'Running', CURRENT_TIMESTAMP, '2026-04-10 11:00:00', 'Android app project', FALSE);
show tables;

CREATE TABLE Attendance (
    attendance_id INT PRIMARY KEY,
    emp_id INT,
    attendance_date DATE,
    check_in TIME,
    check_out TIME,
    working_hours FLOAT,
    overtime_hours FLOAT,
    status VARCHAR(20),
    location VARCHAR(100),
    ip_address VARCHAR(50),
    created_at TIMESTAMP,
    remarks TEXT,
    is_present BOOLEAN
);

INSERT INTO Attendance VALUES
(301, 1, '2026-04-13', '09:00:00', '18:00:00', 9.0, 1.0, 'Present', 'Bangalore Office', '192.168.1.10', CURRENT_TIMESTAMP, 'On time', TRUE),
(302, 2, '2026-04-13', '09:30:00', '18:30:00', 9.0, 1.5, 'Present', 'Mysore Office', '192.168.1.11', CURRENT_TIMESTAMP, 'Good performance', TRUE);
show tables;

CREATE TABLE Payroll (
    payroll_id INT PRIMARY KEY,
    emp_id INT,
    month VARCHAR(20),
    basic_salary DECIMAL(10,2),
    hra DECIMAL(10,2),
    tax DECIMAL(10,2),
    net_salary DECIMAL(10,2),
    payment_date DATE,
    payment_time TIME,
    bonus FLOAT,
    created_at TIMESTAMP,
    remarks TEXT,
    is_paid BOOLEAN
);

INSERT INTO Payroll VALUES
(401, 1, 'April-2026', 60000.00, 10000.00, 5000.00, 65000.00, '2026-04-05', '10:00:00', 2500.50, CURRENT_TIMESTAMP, 'Paid on time', TRUE),
(402, 2, 'April-2026', 75000.00, 12000.00, 7000.00, 80000.00, '2026-04-05', '10:30:00', 3000.00, CURRENT_TIMESTAMP, 'Paid on time', TRUE);
show tables;
