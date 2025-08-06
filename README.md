
# 🏥 Hospital Database Management System

This project is part of my internship contribution to **Heal Bharat** and focuses on the **Database Design and Implementation** of a Hospital Management System using **MySQL**.

## 📌 Project Overview

This system is designed to handle the core data components of a hospital — such as patients, doctors, appointments, treatments, departments, and billing — using a fully normalized relational database schema.

It demonstrates real-world database modeling, complex relationships, and advanced SQL querying using JOINs, GROUP BY, and aggregation.

---

## 🔧 Technologies Used

- **Database**: MySQL 8+
- **Development Environment**: VS Code + MySQL CLI / Workbench
- **File Structure**:
```

hospital-db/
├── schema.sql          # Database schema (tables + relationships)
├── insert\_sample.sql   # Sample data to test the database
├── queries.sql         # SQL queries to fetch required results
├── er\_diagram.png      # ER diagram of the schema 
└── README.md           # Project documentation

````

---

## 📚 Features Implemented

### ✅ Normalized MySQL Schema
- 6 main entities: `Patients`, `Doctors`, `Appointments`, `Departments`, `Treatments`, and `Billing`
- Proper use of primary and foreign keys
- `One-to-Many`: Department → Doctors, Doctor → Appointments
- `Many-to-Many`: Patient ↔ Treatments (via `Patient_Treatments` junction table)

---

### ✅ Sample Data
- Inserted realistic sample data for all tables
- Covers various appointment statuses: Scheduled, Completed, Cancelled
- Includes billing entries with matching patient and treatment references

---

All queries are tested with JOINs and aggregate functions and are included in `queries.sql`.

---

## 🗂 How to Run the Project

### 🛠 Prerequisites

* Install MySQL Server
* Optional: MySQL Workbench or VS Code SQL extension

### ⚙️ Setup Steps

1. Clone the GitHub repository
2. Import the schema:

   ```bash
   mysql -u root -p < schema.sql
   ```
3. Insert sample data:

   ```bash
   mysql -u root -p hospital_db < insert_sample.sql
   ```
4. Run the queries from `queries.sql` in Workbench or any MySQL client

---

## 🔍 ER Diagram

<img width="1024" height="1024" alt="image" src="https://github.com/user-attachments/assets/87ef3a76-8fe6-422b-83ca-b7e407eaa2b8" />

---

## 🙌 Contribution to Heal Bharat

This project is submitted as part of the **Database Technology Task** in the internship with **Heal Bharat**.


**Submitted by:** *Nikhil Rokade*
**Role:** *Database Intern*
**Organization:** *Heal Bharat*

---

