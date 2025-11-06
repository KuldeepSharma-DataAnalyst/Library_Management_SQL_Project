-- Library Management System - Schema
-- Use this file to create database and tables (DDL)

CREATE DATABASE library_db;
USE library_db;

-- Publishers table
CREATE TABLE Publishers (
    PublisherID INT PRIMARY KEY,
    PublisherName VARCHAR(150),
    Contact VARCHAR(100)
);

-- Library Branches
CREATE TABLE Library_Branch (
    BranchID INT PRIMARY KEY,
    BranchName VARCHAR(150),
    City VARCHAR(100)
);

-- Books table
CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(200),
    Author VARCHAR(150),
    Genre VARCHAR(50),
    PublisherID INT,
    BranchID INT,
    Published_Year INT,
    Total_Copies INT,
    FOREIGN KEY (PublisherID) REFERENCES Publishers(PublisherID),
    FOREIGN KEY (BranchID) REFERENCES Library_Branch(BranchID)
);

-- Members table
CREATE TABLE Members (
    MemberID INT PRIMARY KEY,
    MemberName VARCHAR(150),
    Email VARCHAR(150),
    Phone VARCHAR(20),
    Join_Date DATE
);

-- Borrow records table
CREATE TABLE Borrow_Records (
    RecordID INT PRIMARY KEY,
    BookID INT,
    MemberID INT,
    Borrow_Date DATE,
    Return_Date DATE,
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);
