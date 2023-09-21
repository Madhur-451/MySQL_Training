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





