delimiter //
create procedure calculateSum(in a int, in b int, out result int)
begin
set @result = 0;
set @result = a + b;
end;
//
delimiter ;
call calculateSum(10, 50 , @result);
select @result;



delimiter <>
create procedure findAverage()
begin
declare a int;
declare b int;
declare result1 int;

set a = 29;
set b = 67;
set result1 = (a+b)/2;
select result1;
end;
<>
delimiter ;
call findAverage();



delimiter //
create procedure cgpaToPercent(in cgpa int, out percentage int)
begin

set percentage  = cgpa * 8.8;
select percentage;
end;
//
delimiter ;
call cgpaToPercent(9.22, @percentage);