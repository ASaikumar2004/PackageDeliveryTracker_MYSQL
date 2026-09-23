USE package_delivery_tracker;

-- PACKAGE DETAILS VIEW

CREATE OR REPLACE VIEW package_details AS
SELECT
    p.package_id,
    c.name AS customer_name,
    p.package_name,
    p.weight,
    p.status,
    da.agent_name,
    d.delivery_date,
    d.delivery_status,
    pay.amount,
    pay.payment_status
FROM package p
INNER JOIN customer c
    ON p.customer_id = c.customer_id
INNER JOIN delivery d
    ON p.package_id = d.package_id
INNER JOIN delivery_agent da
    ON d.agent_id = da.agent_id
INNER JOIN payment pay
    ON p.package_id = pay.package_id;




SELECT * FROM package_details;

package_id | customer_name | package_name | weight | status
------------------------------------------------------------
101        | Sai Kumar     | Laptop       | 3      | Delivered
102        | Rahul Sharma  | Books        | 2      | In Transit
103        | Priya Reddy   | Clothes      | 4      | Booked
104        | Arjun Kumar   | Mobile       | 1      | Out for Delivery
105        | Kiran Reddy   | Shoes        | 2      | Delivered



-- check the views

SHOW FULL TABLES;

SHOW CREATE VIEW package_details;



-- Some Queries on the View


--1. Delivered packages

SELECT *
FROM package_details
WHERE status = 'Delivered';


--2. Packages handled by Ravi

SELECT *
FROM package_details
WHERE agent_name = 'Ravi Kumar';

--3. Pending payments

SELECT
    package_id,
    customer_name,
    package_name,
    amount
FROM package_details
WHERE payment_status = 'Pending';


--4. Packages heavier than 2 kg

SELECT
    package_id,
    package_name,
    weight
FROM package_details
WHERE weight > 2;
