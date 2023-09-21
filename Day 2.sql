CREATE DATABASE BOOKINFO;
USE BOOKINFO;
CREATE TABLE BOOKS (Book_No INT PRIMARY KEY, Book_Name VARCHAR(30), Auther_Name VARCHAR(30), COST decimal(10), Category VARCHAR(30));

INSERT INTO BOOKS(Book_No, Book_Name, Auther_Name, COST, Category) VALUES (101, "Let US See", "Denis Ritche", 450, "System"),(102, "Oracle-Complete Ref", "Loni", 550, "Database"),(103, "Mastering SQL", "Loni",250, "Database"), (104, "PLSQL-Ref", "Scott Uman", 750, "Database");
select * from books;