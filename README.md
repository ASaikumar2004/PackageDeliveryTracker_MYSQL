# 📦 Package Delivery Tracker

A MySQL-based database project for managing customers, packages, delivery agents, deliveries, and payments.

---

## 📌 Project Overview

The **Package Delivery Tracker** is a relational database management project developed using MySQL.

The project is designed to manage package delivery operations by storing customer details, package information, delivery agent details, delivery status, and payment information.

The database also includes SQL queries, a database view, and a stored procedure for retrieving useful package information.

---

## 🎯 Project Objective

The main objective of this project is to create a simple and organized database system for managing package deliveries.

The system allows us to:

* Manage customer information
* Store package details
* Manage delivery agents
* Track package delivery status
* Store delivery information
* Manage payment information
* Retrieve package details using SQL queries
* Generate useful reports

---

## 🛠️ Technologies Used

* **Database:** MySQL
* **Language:** SQL
* **Database Tool:** MySQL Workbench
* **Code Editor:** Visual Studio Code
* **Version Control:** Git
* **Repository:** GitHub

---

## 🗄️ Database Structure

The project contains **5 tables**:

### 1. Customer

Stores customer information.

```text
customer_id
name
phone
address
```

### 2. Package

Stores package information.

```text
package_id
customer_id
package_name
weight
status
```

### 3. Delivery Agent

Stores delivery agent information.

```text
agent_id
agent_name
phone
city
```

### 4. Delivery

Stores delivery information.

```text
delivery_id
package_id
agent_id
delivery_date
delivery_status
```

### 5. Payment

Stores payment information.

```text
payment_id
package_id
amount
payment_status
```

---

## 🔗 Database Relationships

```text
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
```

### Relationships

* One customer can have multiple packages.
* A package is associated with delivery information.
* One delivery agent can handle multiple deliveries.
* A package has payment information.

---

## 📂 Project Structure

```text
Package-Delivery-Tracker/
│
├── database/
│   ├── create_database.sql
│   ├── create_tables.sql
│   ├── insert_records.sql
│   ├── queries.sql
│   ├── views.sql
│   └── procedure.sql
│
├── documentation/
│   ├── requirements.md
│   ├── database_design.md
│   └── er_diagram.png
│
└── README.md
```

---

## 📊 SQL Features Used

The project demonstrates the following MySQL concepts:

* Database creation
* Table creation
* Primary Keys
* Foreign Keys
* INSERT
* SELECT
* UPDATE
* DELETE
* WHERE
* ORDER BY
* DISTINCT
* Aggregate Functions
* GROUP BY
* HAVING
* INNER JOIN
* LEFT JOIN
* Subqueries
* CASE
* Window Functions
* Views
* Stored Procedures

---

## 🔍 SQL Queries

The project contains multiple queries for retrieving and analyzing package delivery information.

Some examples include:

### Find Delivered Packages

```sql
SELECT *
FROM package
WHERE status = 'Delivered';
```

### Count Packages by Status

```sql
SELECT
    status,
    COUNT(*) AS total_packages
FROM package
GROUP BY status;
```

### Customer and Package Details

```sql
SELECT
    c.name AS customer_name,
    p.package_name,
    p.weight,
    p.status
FROM customer c
JOIN package p
ON c.customer_id = p.customer_id;
```

### Complete Package Information

```sql
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
JOIN customer c
ON p.customer_id = c.customer_id
JOIN delivery d
ON p.package_id = d.package_id
JOIN delivery_agent da
ON d.agent_id = da.agent_id
JOIN payment pay
ON p.package_id = pay.package_id;
```

---

## 👁️ Database View

The project contains a view called:

```text
package_details
```

The view combines information from:

* Customer
* Package
* Delivery
* Delivery Agent
* Payment

Example:

```sql
SELECT *
FROM package_details;
```

---

## ⚙️ Stored Procedure

The project contains a stored procedure:

```text
get_package_details
```

It accepts a package ID and returns complete information about that package.

Example:

```sql
CALL get_package_details(101);
```

---

## 🚀 How to Run the Project

### Step 1: Create the Database

Open MySQL Workbench and execute:

```text
database/create_database.sql
```

### Step 2: Create Tables

Execute:

```text
database/create_tables.sql
```

### Step 3: Insert Records

Execute:

```text
database/insert_records.sql
```

### Step 4: Run Queries

Execute queries from:

```text
database/queries.sql
```

### Step 5: Create the View

Execute:

```text
database/views.sql
```

### Step 6: Create the Stored Procedure

Execute:

```text
database/procedure.sql
```

### Step 7: Test the Project

Check the tables:

```sql
SHOW TABLES;
```

Check the view:

```sql
SELECT * FROM package_details;
```

Test the stored procedure:

```sql
CALL get_package_details(101);
```

---

## 📋 Sample Package Statuses

The project uses different package statuses:

```text
Booked
In Transit
Out for Delivery
Delivered
```

---

## 📁 Documentation

Detailed project documentation is available in the `documentation` folder.

It contains:

* `requirements.md` — Project requirements
* `database_design.md` — Database structure and relationships
* `er_diagram.png` — Entity Relationship Diagram

---

## 🎓 Learning Outcomes

Through this project, I learned and practiced:

* Relational database design
* Primary and foreign keys
* SQL CRUD operations
* Table relationships
* SQL joins
* Aggregate functions
* Grouping and filtering
* Subqueries
* Views
* Stored procedures
* Window functions
* Database documentation
* Git and GitHub project organization

---

## 🔮 Future Enhancements

The project can be extended in the future by adding:

* Customer login
* Package tracking using a tracking number
* Delivery notifications
* Online payment integration
* Delivery history
* Web-based user interface
* Java backend integration
* Admin dashboard

---

## 👨‍💻 Author

**Sai Kumar**

Package Delivery Tracker — MySQL Database Project
