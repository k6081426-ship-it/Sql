create database School_db;
use School_db;
CREATE TABLE Students (
    student_id INT,
    name VARCHAR(50),
    class VARCHAR(20),
    age INT,
    gender VARCHAR(10),
    section VARCHAR(10),
    roll_no INT,
    phone VARCHAR(15),
    address VARCHAR(100),
    admission_date DATE
);

INSERT INTO Students VALUES
(1,'Arjun','10th',15,'M','A',1,'9001','Chennai','2022-06-01'),
(2,'Meena','9th',14,'F','B',2,'9002','Trichy','2023-06-01'),
(3,'Kiran','8th',13,'M','A',3,'9003','Salem','2024-06-01');
select * from Students;

CREATE TABLE Teachers (
    teacher_id INT,
    name VARCHAR(50),
    subject VARCHAR(50),
    experience INT,
    salary DOUBLE,
    phone VARCHAR(15),
    email VARCHAR(100),
    address VARCHAR(100),
    joining_date DATE,
    status VARCHAR(20)
);

INSERT INTO Teachers VALUES
(1,'Mr.Raj','Maths',10,40000,'8001','raj@gmail.com','Chennai','2015-01-01','Active'),
(2,'Mrs.Latha','Science',8,35000,'8002','latha@gmail.com','Madurai','2017-01-01','Active'),
(3,'Mr.Arun','English',5,30000,'8003','arun@gmail.com','Coimbatore','2019-01-01','Active');
show tables;

CREATE TABLE Subjects (
    subject_id INT,
    name VARCHAR(50),
    class VARCHAR(20),
    teacher_id INT,
    credits INT,
    duration INT,
    type VARCHAR(20),
    syllabus VARCHAR(100),
    exam_type VARCHAR(20),
    remarks VARCHAR(50)
);

INSERT INTO Subjects VALUES
(1,'Maths','10th',1,4,6,'Core','Algebra','Final','OK'),
(2,'Science','9th',2,4,6,'Core','Physics','Final','OK'),
(3,'English','8th',3,3,6,'Core','Grammar','Final','OK');
show tables;

CREATE TABLE Exams (
    exam_id INT,
    subject VARCHAR(50),
    date DATE,
    duration INT,
    max_marks INT,
    pass_marks INT,
    class VARCHAR(20),
    section VARCHAR(10),
    type VARCHAR(20),
    invigilator VARCHAR(50)
);

INSERT INTO Exams VALUES
(1,'Maths','2025-03-01',3,100,40,'10th','A','Final','Raj'),
(2,'Science','2025-03-02',3,100,40,'9th','B','Final','Latha'),
(3,'English','2025-03-03',3,100,40,'8th','A','Final','Arun');
show tables;

CREATE TABLE Fees (
    fee_id INT,
    student_id INT,
    amount DOUBLE,
    paid DOUBLE,
    balance DOUBLE,
    due_date DATE,
    payment_mode VARCHAR(20),
    status VARCHAR(20),
    receipt_no VARCHAR(20),
    remarks VARCHAR(50)
);

INSERT INTO Fees VALUES
(1,1,20000,15000,5000,'2025-04-01','Cash','Pending','R1','OK'),
(2,2,18000,18000,0,'2025-04-01','Card','Paid','R2','OK'),
(3,3,15000,10000,5000,'2025-04-01','UPI','Pending','R3','Check');
show tables;