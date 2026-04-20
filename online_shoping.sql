create database online_shoping;
use online_shoping;
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    product_name VARCHAR(50),
    quantity INT,
    price DECIMAL(10,2),
    order_date DATE,
    city VARCHAR(50),
    payment_status VARCHAR(20)
);
desc orders;
INSERT INTO orders VALUES
(1,'Amit','Laptop',1,60000,'2023-01-10','Delhi','Paid'),
(2,'Ravi','Mobile',2,30000,'2023-02-15','Mumbai','Pending'),
(3,'Sneha','Tablet',1,25000,'2023-03-20','Bangalore','Paid'),
(4,'Kiran','Headphones',3,6000,'2023-01-25','Chennai','Cancelled'),
(5,'Pooja','Camera',1,45000,'2023-04-05','Delhi','Paid'),
(6,'Arjun','Watch',2,10000,'2023-02-18','Mumbai','Pending'),
(7,'Neha','Shoes',2,4000,'2023-03-12','Pune','Paid'),
(8,'Rahul','Laptop',1,70000,'2023-01-30','Bangalore','Cancelled'),
(9,'Anita','Mobile',3,45000,'2023-02-22','Chennai','Paid'),
(10,'Vikas','Tablet',2,50000,'2023-04-10','Delhi','Pending');
select * from orders;
-- >
SELECT * FROM orders WHERE price > 40000;
SELECT * FROM orders WHERE quantity > 1;
SELECT * FROM orders WHERE order_id > 5;
SELECT * FROM orders WHERE price > 20000;
SELECT * FROM orders WHERE quantity > 2;

-- <
SELECT * FROM orders WHERE price < 30000;
SELECT * FROM orders WHERE quantity < 2;
SELECT * FROM orders WHERE order_id < 5;
SELECT * FROM orders WHERE price < 50000;
SELECT * FROM orders WHERE quantity < 3;

-- <=
SELECT * FROM orders WHERE price <= 50000;
SELECT * FROM orders WHERE quantity <= 2;
SELECT * FROM orders WHERE order_id <= 5;
SELECT * FROM orders WHERE price <= 30000;
SELECT * FROM orders WHERE quantity <= 3;

-- >=
SELECT * FROM orders WHERE price >= 50000;
SELECT * FROM orders WHERE quantity >= 2;
SELECT * FROM orders WHERE order_id >= 5;
SELECT * FROM orders WHERE price >= 30000;
SELECT * FROM orders WHERE quantity >= 3;

-- !=
SELECT * FROM orders WHERE payment_status != 'Paid';
SELECT * FROM orders WHERE city != 'Delhi';
SELECT * FROM orders WHERE product_name != 'Laptop';
SELECT * FROM orders WHERE quantity != 2;
SELECT * FROM orders WHERE price != 60000;

-- AND
SELECT * FROM orders WHERE price > 30000 AND city = 'Delhi';
SELECT * FROM orders WHERE quantity > 1 AND payment_status = 'Paid';
SELECT * FROM orders WHERE price > 20000 AND quantity < 3;
SELECT * FROM orders WHERE city = 'Mumbai' AND payment_status = 'Pending';
SELECT * FROM orders WHERE product_name = 'Mobile' AND quantity = 3;

-- OR
SELECT * FROM orders WHERE city = 'Delhi' OR city = 'Mumbai';
SELECT * FROM orders WHERE payment_status = 'Paid' OR payment_status = 'Pending';
SELECT * FROM orders WHERE price > 60000 OR quantity < 2;
SELECT * FROM orders WHERE product_name = 'Laptop' OR product_name = 'Tablet';
SELECT * FROM orders WHERE quantity = 1 OR quantity = 3;

-- NOT
SELECT * FROM orders WHERE NOT city = 'Delhi';
SELECT * FROM orders WHERE NOT payment_status = 'Paid';
SELECT * FROM orders WHERE NOT price > 50000;
SELECT * FROM orders WHERE NOT quantity < 2;
SELECT * FROM orders WHERE NOT product_name = 'Mobile';

-- IN
SELECT * FROM orders WHERE city IN ('Delhi','Mumbai');
SELECT * FROM orders WHERE product_name IN ('Laptop','Mobile');
SELECT * FROM orders WHERE quantity IN (1,2);
SELECT * FROM orders WHERE price IN (60000,30000);
SELECT * FROM orders WHERE payment_status IN ('Paid','Pending');

-- NOT IN
SELECT * FROM orders WHERE city NOT IN ('Delhi','Mumbai');
SELECT * FROM orders WHERE product_name NOT IN ('Laptop','Mobile');
SELECT * FROM orders WHERE quantity NOT IN (1,2);
SELECT * FROM orders WHERE price NOT IN (60000,30000);
SELECT * FROM orders WHERE payment_status NOT IN ('Paid','Pending');

-- IS NULL
SELECT * FROM orders WHERE product_name IS NULL;
SELECT * FROM orders WHERE city IS NULL;
SELECT * FROM orders WHERE price IS NULL;
SELECT * FROM orders WHERE payment_status IS NULL;
SELECT * FROM orders WHERE quantity IS NULL;

-- IS NOT NULL
SELECT * FROM orders WHERE product_name IS NOT NULL;
SELECT * FROM orders WHERE city IS NOT NULL;
SELECT * FROM orders WHERE price IS NOT NULL;
SELECT * FROM orders WHERE payment_status IS NOT NULL;
SELECT * FROM orders WHERE quantity IS NOT NULL;

-- LIKE
SELECT * FROM orders WHERE customer_name LIKE 'A%';
SELECT * FROM orders WHERE product_name LIKE '%e';
SELECT * FROM orders WHERE city LIKE 'D%';
SELECT * FROM orders WHERE customer_name LIKE '%a%';
SELECT * FROM orders WHERE product_name LIKE '%top%';

-- NOT LIKE
SELECT * FROM orders WHERE customer_name NOT LIKE 'A%';
SELECT * FROM orders WHERE product_name NOT LIKE '%e';
SELECT * FROM orders WHERE city NOT LIKE 'D%';
SELECT * FROM orders WHERE customer_name NOT LIKE '%a%';
SELECT * FROM orders WHERE product_name NOT LIKE '%top%';

-- BETWEEN
SELECT * FROM orders WHERE price BETWEEN 20000 AND 50000;
SELECT * FROM orders WHERE quantity BETWEEN 1 AND 2;
SELECT * FROM orders WHERE order_id BETWEEN 3 AND 7;
SELECT * FROM orders WHERE price BETWEEN 10000 AND 60000;
SELECT * FROM orders WHERE quantity BETWEEN 2 AND 3;

-- NOT BETWEEN
SELECT * FROM orders WHERE price NOT BETWEEN 20000 AND 50000;
SELECT * FROM orders WHERE quantity NOT BETWEEN 1 AND 2;
SELECT * FROM orders WHERE order_id NOT BETWEEN 3 AND 7;
SELECT * FROM orders WHERE price NOT BETWEEN 10000 AND 60000;
SELECT * FROM orders WHERE quantity NOT BETWEEN 2 AND 3;