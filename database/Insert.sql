USE package_delivery_tracker;

INSERT INTO customer
(customer_id, name, phone, address)
VALUES
(1, 'Sai Kumar', '9876543210', 'Hyderabad'),
(2, 'Rahul Sharma', '9876543211', 'Warangal'),
(3, 'Priya Reddy', '9876543212', 'Vijayawada'),
(4, 'Arjun Kumar', '9876543213', 'Guntur'),
(5, 'Kiran Reddy', '9876543214', 'Nizamabad');



INSERT INTO package
(package_id, customer_id, package_name, weight, status)
VALUES
(101, 1, 'Laptop', 3, 'Delivered'),
(102, 2, 'Books', 2, 'In Transit'),
(103, 3, 'Clothes', 4, 'Booked'),
(104, 4, 'Mobile', 1, 'Out for Delivery'),
(105, 5, 'Shoes', 2, 'Delivered');


INSERT INTO delivery_agent
(agent_id, agent_name, phone, city)
VALUES
(1, 'Ravi Kumar', '9000000001', 'Hyderabad'),
(2, 'Suresh Kumar', '9000000002', 'Warangal'),
(3, 'Kiran Kumar', '9000000003', 'Vijayawada'),
(4, 'Mahesh Kumar', '9000000004', 'Guntur'),
(5, 'Ramesh Kumar', '9000000005', 'Nizamabad');


INSERT INTO delivery
(delivery_id, package_id, agent_id, delivery_date, delivery_status)
VALUES
(1, 101, 1, '2026-09-15', 'Delivered'),
(2, 102, 2, '2026-09-18', 'In Transit'),
(3, 103, 3, '2026-09-20', 'Pending'),
(4, 104, 4, '2026-09-19', 'Out for Delivery'),
(5, 105, 5, '2026-09-17', 'Delivered');


INSERT INTO payment
(payment_id, package_id, amount, payment_status)
VALUES
(1, 101, 500, 'Paid'),
(2, 102, 300, 'Pending'),
(3, 103, 400, 'Paid'),
(4, 104, 250, 'Pending'),
(5, 105, 350, 'Paid');



SELECT * FROM customer;
SELECT * FROM package;
SELECT * FROM delivery_agent;
SELECT * FROM delivery;
SELECT * FROM payment;

