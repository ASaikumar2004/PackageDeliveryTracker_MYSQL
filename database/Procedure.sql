USE package_delivery_tracker;

-- STORED PROCEDURE

DELIMITER //

CREATE PROCEDURE get_package_details(IN p_package_id INT)
BEGIN
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
        ON p.package_id = pay.package_id

    WHERE p.package_id = p_package_id;

END //
DELIMITER ;



CALL get_package_details(101);


-- Package ID       → 101
-- Customer         → Sai Kumar
-- Package          → Laptop
-- Weight           → 3
-- Status           → Delivered
-- Delivery Agent   → Ravi Kumar
-- Delivery Date    → 2026-09-15
-- Delivery Status  → Delivered
-- Amount           → 500
-- Payment Status   → Paid



SHOW PROCEDURE STATUS
WHERE Db = 'package_delivery_tracker';

SHOW CREATE PROCEDURE get_package_details;