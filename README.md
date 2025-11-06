# Library_Management_SQL_Project
# 📚 Library Management System — SQL Project

## 🔍 Overview
This Library Management System project demonstrates how a real-world library can manage books, members, and borrow transactions efficiently using SQL.
It’s designed for students, beginners, and professionals who want to strengthen their database design and query skills with practical, Indian-context data.
The project simulates the everyday operations of a library — including book lending, member management, and fine calculation — through a relational database model.

### 🧠 Objectives

- To design a normalized database schema for a library system.
- To practice SQL DDL and DML commands.
- To write analytical and complex SQL queries using joins, aggregates, and subqueries.
- To simulate real-world data management tasks using structured datasets.

### 🏗️ Project Structure
| File Name                      | Description                                                                                                                                     |
| ------------------------------ | ----------------------------------------------------------------------------------------------------------------------------------------------- |
| `schema.sql`                   | Contains all **table creation** statements (DDL). Defines tables like `Publishers`, `Library_Branch`, `Books`, `Members`, and `Borrow_Records`. |
| `data.sql`                     | Includes all **INSERT** statements with Indian-context sample data (authors, publishers, branch locations, etc.).                               |
| `queries.sql`                  | Holds 10–12 SQL **queries** for data analysis and management.                                                                                   |
| `import_data.py`               | Python script to automatically import schema and data into MySQL.                                                                               |
| `ER_Diagram_Library_Final.pdf` | Entity Relationship Diagram showing table relationships.                                                                                        |
| `README.md`                    | Project description and setup guide (this file).                                                                                                |

### 🧩 Database Design

#### Tables Included:
1. Publishers — Details of book publishers.
2. Library_Branch — Branches of the library across India (Delhi, Mumbai, etc.).
3. Books — Contains book titles, authors, and publisher references.
4. Members — Registered library members with contact details.

### Relationships:
- One publisher can publish many books.
- One branch can manage many borrow records.
- One member can borrow multiple books.

### 📊 ER Diagram
The ER diagram (included as PDF) shows:
- Entities: Books, Members, Publishers, Branches, Borrow Records
- Relationships: One-to-Many and Many-to-Many (via borrow records)

### 🧠 Key Learnings
- How to normalize data and create relationships between entities.
- How to write SQL JOINs, GROUP BY, and aggregate queries.
- How to import SQL data using Python.
- How to represent a database schema visually using ERD.
