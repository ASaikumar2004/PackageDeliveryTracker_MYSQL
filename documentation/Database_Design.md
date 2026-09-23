# Package Delivery Tracker - Database Design

## 1. Database Name

`package_delivery_tracker`

---

## 2. Database Overview

The Package Delivery Tracker database consists of five main tables:

1. Customer
2. Package
3. Delivery Agent
4. Delivery
5. Payment

The tables are connected using primary keys and foreign keys.

---

# 3. Customer Table

The Customer table stores information about customers who send packages.

### Table Name

`customer`

### Columns

| Column | Data Type | Key | Description |
|---|---|---|---|
| customer_id | INT | Primary Key | Unique customer ID |
| name | VARCHAR(50) | - | Customer name |
| phone | VARCHAR(15) | - | Customer phone number |
| address | VARCHAR(100) | - | Customer address |

### Primary Key

`customer_id`

---

# 4. Package Table

The Package table stores information about packages.

### Table Name

`package`

### Columns

| Column | Data Type | Key | Description |
|---|---|---|---|
| package_id | INT | Primary Key | Unique package ID |
| customer_id | INT | Foreign Key | ID of the customer |
| package_name | VARCHAR(50) | - | Name of the package |
| weight | INT | - | Package weight |
| status | VARCHAR(30) | - | Current package status |

### Primary Key

`package_id`

### Foreign Key

`customer_id` references `customer(customer_id)`

---

# 5. Delivery Agent Table

The Delivery Agent table stores information about delivery agents.

### Table Name

`delivery_agent`

### Columns

| Column | Data Type | Key | Description |
|---|---|---|---|
| agent_id | INT | Primary Key | Unique agent ID |
| agent_name | VARCHAR(50) | - | Delivery agent name |
| phone | VARCHAR(15) | - | Agent phone number |
| city | VARCHAR(50) | - | Agent working city |

### Primary Key

`agent_id`

---

# 6. Delivery Table

The Delivery table stores information about package deliveries.

### Table Name

`delivery`

### Columns

| Column | Data Type | Key | Description |
|---|---|---|---|
| delivery_id | INT | Primary Key | Unique delivery ID |
| package_id | INT | Foreign Key | ID of the package |
| agent_id | INT | Foreign Key | ID of the delivery agent |
| delivery_date | DATE | - | Delivery date |
| delivery_status | VARCHAR(30) | - | Delivery status |

### Primary Key

`delivery_id`

### Foreign Keys

`package_id` references `package(package_id)`

`agent_id` references `delivery_agent(agent_id)`

---

# 7. Payment Table

The Payment table stores payment information for packages.

### Table Name

`payment`

### Columns

| Column | Data Type | Key | Description |
|---|---|---|---|
| payment_id | INT | Primary Key | Unique payment ID |
| package_id | INT | Foreign Key | ID of the package |
| amount | INT | - | Payment amount |
| payment_status | VARCHAR(20) | - | Payment status |

### Primary Key

`payment_id`

### Foreign Key

`package_id` references `package(package_id)`

---

# 8. Relationships

## Customer and Package

A customer can have multiple packages.

**Relationship: One-to-Many (1:M)

Customer 1 -------- M Package



Package and Delivery
A package is associated with delivery information.

Relationship: One-to-One (1:1)


Package 1 -------- 1 Delivery
Delivery Agent and Delivery
A delivery agent can handle multiple deliveries.

Relationship: One-to-Many (1:M)


Delivery Agent 1 -------- M Delivery
Package and Payment
A package has payment information.

Relationship: One-to-One (1:1)


Package 1 -------- 1 Payment
9. Relationship Summary

Customer
    |
    | 1 : M
    |
Package
    |
    | 1 : 1
    |
Delivery
    |
    | M : 1
    |
Delivery Agent

Package
    |
    | 1 : 1
    |
Payment



10. Database View
The project contains a view named:

package_details

The view combines information from:

Customer
Package
Delivery
Delivery Agent
Payment

It provides a combined view of package delivery information.

11. Stored Procedure
The project contains a stored procedure named:


get_package_details


The procedure accepts a package ID as input and returns complete
information about that package.

Example:

SQL

CALL get_package_details(101);



12. Database Design Goals
The database was designed to:

Reduce duplicate data

Maintain relationships between tables

Maintain data integrity

Make data retrieval easier

Support different SQL operations

Generate useful reports

Keep the database simple and maintainable


