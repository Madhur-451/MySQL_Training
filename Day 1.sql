CREATE DATABASE BOOKINFO;
USE BOOKINFO;
CREATE TABLE BOOKS (Book_No INT PRIMARY KEY, Book_Name VARCHAR(30), Auther_Name VARCHAR(30), COST decimal(10), Category VARCHAR(30));

INSERT INTO BOOKS(Book_No, Book_Name, Auther_Name, COST, Category) VALUES (101, "Let US See", "Denis Ritche", 450, "System"),(102, "Oracle-Complete Ref", "Loni", 550, "Database"),(103, "Mastering SQL", "Loni",250, "Database"), (104, "PLSQL-Ref", "Scott Uman", 750, "Database");
select * from books;




-- 1] select all the records
-- 2] select records whose cost between >=500 and <=700
-- 3] Find record with book name staring with O letter
-- 4] find records whose cost is < avg cost
-- 5] create new table with same structure
-- 6] create new table as copy of books
-- 7] create new table with database as category
-- 8] find record with max cost
-- 9] find record with min cost
-- 10]find name of the author who has  published more than one book

-- 1] select all the records
SELECT * FROM BOOKS;

-- 2] select records whose cost between >=500 and <=700

select * from books where COST between 500 and 700;

-- 3] Find record with book name staring with O letter

select * from books where Book_Name like 'O%';

-- 4] find records whose cost is < avg cost - to do

select * from books where cost < (select AVG(cost) from books);

-- 5] create new table with same structure
create table npp like books;
select * from npp;


select * from new_books;

-- 6] create new table as copy of books - same as 5th one
create table new_books AS (Select * from books);

-- 7] create new table with database as category
create table copy_books (Select * from books where Category = "Database");
select * from copy_books;

-- 8] find record with max cost
select * from books;
select * from books where cost =  (select Max(cost) from books);

-- 9] find record with min cost
select * from books where cost =  (select Min(cost) from books);

-- 10]find name of the author who has published more than one book
select Auther_Name from books Group BY(Auther_Name) having count(*)>1;


update books set COST = cost + 350;
-- SET SQL_SAFE_UPDATES=0;

select Book_Name from books where Category = "Database";
select * from books;

select Book_Name, Cost from books where category = "System" OR "Database";


select * from books where cost >= 1000;

alter table books add column published_year int;

select * from books;
update books set published_year = 2000 where Book_No = 101;
update books set published_year = 2001 where Book_No = 102;
update books set published_year = 2002 where Book_No = 103;
update books set published_year = 2003 where Book_No = 104;

alter table books add column subscribers int After Auther_Name;

update books set subscribers = 10 where Book_No = 101;
update books set subscribers = 100 where Book_No = 102;
update books set subscribers = 210 where Book_No = 103;
update books set subscribers = 300 where Book_No = 104;

alter table books rename column Auther_Name to Author_Name;

