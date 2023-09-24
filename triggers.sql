use madhurdb;

select * from students;
select * from stu_backup;

create table students(id int primary key, name varchar(20));
insert into students values(1, "madhur"), (2, "akshay"), (3,  "nitin"), (4, "vipul");

delimiter //
create trigger t
before delete on students
for each row
begin
insert into stu_backup values(old.id, old.name);
end;
//
delimiter ;

delete from students where id = 7;