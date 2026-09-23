USE package_delivery_tracker;


-- ==========================================
-- 1. BASIC SELECT QUERIES
-- ==========================================

-- Query 1: Display all customers
SELECT * FROM customer;


-- Query 2: Display all packages
SELECT * FROM package;


-- Query 3: Display all delivery agents
SELECT * FROM delivery_agent;


-- ==========================================
-- 2. WHERE CLAUSE
-- ==========================================

-- Query 4: Find delivered packages
SELECT *
FROM package
WHERE status = 'Delivered';


-- Query 5: Find packages weighing more than 2 kg
SELECT *
FROM package
WHERE weight > 2;


-- Query 6: Find pending payments
SELECT *
FROM payment
WHERE payment_status = 'Pending';


-- ==========================================
-- 3. ORDER BY
-- ==========================================

-- Query 7: Sort packages by weight
SELECT *
FROM package
ORDER BY weight DESC;


-- Query 8: Sort customers alphabetically
SELECT *
FROM customer
ORDER BY name ASC;


-- ==========================================
-- 4. DISTINCT
-- ==========================================

-- Query 9: Display different package statuses
SELECT DISTINCT status
FROM package;


-- ==========================================
-- 5. AGGREGATE FUNCTIONS
-- ==========================================

-- Query 10: Count total packages
SELECT COUNT(*) AS total_packages
FROM package;


-- Query 11: Find total payment amount
SELECT SUM(amount) AS total_payment
FROM payment;


-- Query 12: Find average package weight
SELECT AVG(weight) AS average_weight
FROM package;


-- Query 13: Find maximum package weight
SELECT MAX(weight) AS maximum_weight
FROM package;


-- Query 14: Find minimum package weight
SELECT MIN(weight) AS minimum_weight
FROM package;


-- ==========================================
-- 6. GROUP BY
-- ==========================================

-- Query 15: Count packages by status
SELECT
    status,
    COUNT(*) AS total_packages
FROM package
GROUP BY status;


-- Query 16: Count packages for each customer
SELECT
    customer_id,
    COUNT(*) AS total_packages
FROM package
GROUP BY customer_id;


-- Query 17: Count deliveries by status
SELECT
    delivery_status,
    COUNT(*) AS total_deliveries
FROM delivery
GROUP BY delivery_status;


-- ==========================================
-- 7. HAVING
-- ==========================================

-- Query 18: Find customers having packages
SELECT
    customer_id,
    COUNT(*) AS total_packages
FROM package
GROUP BY customer_id
HAVING COUNT(*) > 0;


-- ==========================================
-- 8. INNER JOIN
-- ==========================================

-- Query 19: Display customer and package details
SELECT
    c.name AS customer_name,
    p.package_name,
    p.weight,
    p.status
FROM customer c
INNER JOIN package p
ON c.customer_id = p.customer_id;


-- Query 20: Display package and delivery agent details
SELECT
    p.package_id,
    p.package_name,
    da.agent_name,
    d.delivery_status
FROM package p
INNER JOIN delivery d
ON p.package_id = d.package_id
INNER JOIN delivery_agent da
ON d.agent_id = da.agent_id;


-- Query 21: Display package and payment details
SELECT
    p.package_id,
    p.package_name,
    pay.amount,
    pay.payment_status
FROM package p
INNER JOIN payment pay
ON p.package_id = pay.package_id;


-- ==========================================
-- 9. LEFT JOIN
-- ==========================================

-- Query 22: Display all customers and their packages
SELECT
    c.name AS customer_name,
    p.package_name,
    p.status
FROM customer c
LEFT JOIN package p
ON c.customer_id = p.customer_id;


-- Query 23: Display all delivery agents and their deliveries
SELECT
    da.agent_name,
    d.package_id,
    d.delivery_status
FROM delivery_agent da
LEFT JOIN delivery d
ON da.agent_id = d.agent_id;


-- ==========================================
-- 10. CASE
-- ==========================================

-- Query 24: Display package status message
SELECT
    package_id,
    package_name,
    status,
    CASE
        WHEN status = 'Delivered'
            THEN 'Package Delivered'
        WHEN status = 'In Transit'
            THEN 'Package is Moving'
        WHEN status = 'Booked'
            THEN 'Waiting for Pickup'
        ELSE 'Delivery in Progress'
    END AS status_message
FROM package;


-- ==========================================
-- 11. SUBQUERIES
-- ==========================================

-- Query 25: Find packages heavier than average
SELECT *
FROM package
WHERE weight > (
    SELECT AVG(weight)
    FROM package
);


-- Query 26: Find package with highest payment
SELECT *
FROM payment
WHERE amount = (
    SELECT MAX(amount)
    FROM payment
);


-- ==========================================
-- 12. MULTIPLE TABLE JOIN
-- ==========================================

-- Query 27: Display complete package information
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


-- ==========================================
-- 13. WINDOW FUNCTION
-- ==========================================

-- Query 28: Rank packages according to weight
SELECT
    package_id,
    package_name,
    weight,
    RANK() OVER (ORDER BY weight DESC) AS weight_rank
FROM package;


-- Query 29: Running total of payments
SELECT
    payment_id,
    package_id,
    amount,
    SUM(amount) OVER (ORDER BY payment_id) AS running_total
FROM payment;





-- SELECT
-- WHERE
-- ORDER BY
-- DISTINCT
-- COUNT()
-- SUM()
-- AVG()
-- MAX()
-- MIN()
-- GROUP BY
-- HAVING
-- INNER JOIN
-- LEFT JOIN
-- CASE
-- SUBQUERY
-- MULTIPLE TABLE JOIN
-- RANK()
-- WINDOW FUNCTION




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