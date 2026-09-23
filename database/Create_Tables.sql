USE package_delivery_tracker;

CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    phone VARCHAR(15),
    address VARCHAR(100)
);

CREATE TABLE package (
    package_id INT PRIMARY KEY,
    customer_id INT,
    package_name VARCHAR(50),
    weight INT,
    status VARCHAR(30),
    FOREIGN KEY (customer_id)
        REFERENCES customer(customer_id)
);

CREATE TABLE delivery_agent (
    agent_id INT PRIMARY KEY,
    agent_name VARCHAR(50),
    phone VARCHAR(15),
    city VARCHAR(50)
);

CREATE TABLE delivery (
    delivery_id INT PRIMARY KEY,
    package_id INT,
    agent_id INT,
    delivery_date DATE,
    delivery_status VARCHAR(30),
    FOREIGN KEY (package_id)
        REFERENCES package(package_id),
    FOREIGN KEY (agent_id)
        REFERENCES delivery_agent(agent_id)
);

CREATE TABLE payment (
    payment_id INT PRIMARY KEY,
    package_id INT,
    amount INT,
    payment_status VARCHAR(20),
    FOREIGN KEY (package_id)
        REFERENCES package(package_id)
);





SHOW TABLES;

customer
delivery
delivery_agent
package
payment