select * from cars_india_dataset;

alter table cars_india_dataset rename column MyUnknownColumn to car_id;

select * from cars_india_dataset order by car_id desc;

select count(*) as total_count, maker from cars_india_dataset group by (maker) having count(*) >10;

select count(distinct maker), fuel from cars_india_dataset group by fuel;

select count(*), fuel from cars_india_dataset group by fuel;

select car_id from cars_india_dataset where (select max(displacement) from cars_india_dataset);