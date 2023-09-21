create database organization;
use organization;
create table employee(empid int not null primary key, name varchar(20), salary int);
create table department(deptid int not null primary key, deptname varchar(20));

create table organization(empid int, deptid int,  foreign key(empid) references employee(empid), foreign key(deptid) references department(deptid));

desc organization;