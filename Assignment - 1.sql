create database library;
use library;

-- table1 - member
create table member (member_id int primary key, member_name varchar(30), member_address varchar(30), acc_open_date date, membership_type varchar(20), fees_paid int, max_books_allowed int, penalty_amount int);
desc member;

-- table2 - books
create table books (book_no int primary key, book_name varchar(30), author_name varchar(30), cost int, category varchar(10));
desc books;

-- table3 - issue
create table issue (lib_issue_id int primary key, book_no int, member_id int, issue_date date, return_date date);
desc issue;

-- 4th query
update member set membership_type = 'Lifetime' where member_id = 1;

-- 5th query
alter table member modify member_name char(30);
desc member;

-- 6th query
alter table issue add column reference char(30);
desc issue;

-- 7th query
alter table issue drop reference;  

-- 8th query
rename table issue to lib_issue;
desc lib_issue;

-- 9th query
insert into member values (1, 'richa sharma', 'pune', '2005-12-10', 'Lifetime', 25000, 5, 50);
insert into member values(2, 'garima sen', 'pune', curdate(), 'annual', 1000, 3, null);
select * from member;

-- 10th query
insert into member values (3, 'madhur patil', 'pune', '2002-02-05', 'Lifetime', 20000, 4, 90), (4, 'nana patekar', 'chennai', '1090-12-10', 'Annual', 65000, 1, 500);
select * from member;

-- 11th query
alter table member modify column member_name char(20);
desc member;

-- 12th query


-- 13th query
create table member101 (select * from member);
select * from member101;
desc member101;


-- 14th query
alter table member101 add constraint max check (max_books_allowed < 100);
alter table member101 add constraint pen_amt check (penalty_amount <=1000);

-- 15th query;
drop table books;

-- 16th query
create table books (book_no int primary key, book_name varchar(30) not null, author_name varchar(30), cost int, category varchar(10));
desc books;

-- 17th query
insert into books values (101, 'let us C', 'denis ritche', 450, 'system'), (102, 'oracle-complete ref', 'loni', 550, 'database'), (103, 'mastering sql', 'loni', 250, 'database'), (104, 'pl sql-ref', 'scot urman', 750, 'database');
select * from books;

-- 18th query


-- 19th query
create table book101 like books;
select * from book101;

-- 20th query
insert into book101 (select * from books);

-- 21st query

-- 22nd query
select * from book101;

-- 23rd query

insert into books values (105, 'national geography', 'adis scott', 1000, 'science');
select * from books;

-- 24th query

-- 25th query
update books set cost = 300 , category = 'rdbms' where book_no = 103;

-- 26th query
desc lib_issue;
desc issue;
alter table lib_issue rename to issue;

-- 27th query

-- 28th query

-- 29th query

