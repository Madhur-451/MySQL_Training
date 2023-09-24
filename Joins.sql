create database organization;
use organization;
create table employee(empid int not null primary key, name varchar(20), salary int);
create table department(deptid int not null primary key, deptname varchar(20));

create table organization(empid int, deptid int,  foreign key(empid) references employee(empid), foreign key(deptid) references department(deptid));

desc organization;


create table department(dept_id int not null primary key, dept_name varchar(20) not null);
use library;
insert into department values(101, 'Finance');
insert into department values(102, 'HR');
insert into department values(103, 'Admin');
insert into department values(104, 'IT');

select * from department;

create table employee(emp_id int not null primary key, emp_name varchar(20) not null, age int, deptid int, 
foreign key (deptid) references department(dept_id));


insert into employee values(3, 'madhur', 56, 101);
insert into employee values(4, 'jay', 23, 103);
insert into employee values(5, 'shivam', 22, 104);

select * from employee;

-- inner join
select * from department as d inner join employee as e on e.deptid = d.dept_id; 

-- left outer join
select d.dept_id, d.dept_name, e.emp_name from department d left outer join employee as e on e.deptid = d.dept_id;




-- Create the Departments table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

-- Insert values into the Departments table
INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES
    (101, 'HR'),
    (102, 'IT'),
    (103, 'Sales');

-- Create the Employees table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

-- Insert values into the Employees table
INSERT INTO Employees (EmployeeID, FirstName, LastName, DepartmentID)
VALUES
    (1, 'John', 'Doe', 101),
    (2, 'Jane', 'Smith', 102),
    (3, 'Bob', 'Johnson', 101),
    (4, 'Alice', 'Brown', 103);

select * from departments;
select * from employees;

SELECT Employees.FirstName, Employees.LastName, Departments.DepartmentName FROM Employees INNER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;

SELECT Employees.FirstName, Employees.LastName, Departments.DepartmentName FROM Employees LEFT JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;

SELECT Employees.FirstName, Employees.LastName, Departments.DepartmentName FROM Employees RIGHT JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;
