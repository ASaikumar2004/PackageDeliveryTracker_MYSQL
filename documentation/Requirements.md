# Package Delivery Tracker - Requirements

## 1. Project Title

Package Delivery Tracker

---

## 2. Introduction

Package Delivery Tracker is a MySQL-based database project developed to
manage package delivery information in an organized and efficient way.

The system stores information about customers, packages, delivery agents,
deliveries, and payments.

---

## 3. Problem Statement

Managing package delivery information manually can be difficult when the
number of customers and packages increases.

It can become difficult to:

- Track package status
- Find customer information
- Identify the delivery agent
- Track delivery dates
- Manage payment information
- Retrieve package information quickly

The Package Delivery Tracker solves these problems by storing the
information in a structured relational database.

---

## 4. Project Objective

The main objective of this project is to develop a simple MySQL database
for managing package delivery operations.

The system is designed to:

- Store customer information
- Store package information
- Assign packages to delivery agents
- Track package delivery status
- Store delivery information
- Store payment information
- Retrieve package details using SQL queries
- Generate useful delivery reports

---

## 5. Functional Requirements

### 5.1 Customer Management

The system should allow users to:

- Add customer information
- View customer information
- Search customer information

### 5.2 Package Management

The system should allow users to:

- Add package information
- Associate a package with a customer
- Store package weight
- Store package status
- Search package information

### 5.3 Delivery Agent Management

The system should allow users to:

- Add delivery agent information
- Store agent phone numbers
- Store agent working city
- View delivery agent information

### 5.4 Delivery Management

The system should allow users to:

- Assign packages to delivery agents
- Store delivery dates
- Store delivery status
- View delivery information

### 5.5 Payment Management

The system should allow users to:

- Store payment information
- Store payment amount
- Track payment status
- View payment details

---

## 6. Non-Functional Requirements

### Performance

The database should retrieve package and delivery information efficiently.

### Reliability

The system should maintain accurate and consistent data.

### Usability

The database structure and queries should be simple and easy to understand.

### Maintainability

The database should be organized so that tables and SQL files can be
easily maintained.

### Data Integrity

Primary keys and foreign keys should be used to maintain relationships
between tables.

---

## 7. Technology Requirements

### Software

- MySQL
- MySQL Workbench
- Visual Studio Code
- Git
- GitHub

### Database

- MySQL 8.0 or later

---

## 8. Database Requirements

The project contains five main tables:

1. Customer
2. Package
3. Delivery Agent
4. Delivery
5. Payment

The project also contains:

- SQL queries
- A database view
- A stored procedure

---

## 9. SQL Concepts Used

The following MySQL concepts are used in this project:

- CREATE DATABASE
- CREATE TABLE
- PRIMARY KEY
- FOREIGN KEY
- INSERT
- SELECT
- UPDATE
- DELETE
- WHERE
- ORDER BY
- DISTINCT
- GROUP BY
- HAVING
- Aggregate Functions
- INNER JOIN
- LEFT JOIN
- Subqueries
- CASE
- Views
- Stored Procedures
- Window Functions

---

## 10. Expected Outcome

The expected outcome of the project is a simple and organized relational
database that can store and manage package delivery information.

The database should allow users to easily retrieve customer, package,
delivery, agent, and payment information using SQL queries.