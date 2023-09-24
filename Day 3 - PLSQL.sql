USE library;
delimiter $$
drop procedure pcname;
create procedure pcname(IN mkr varchar(50));

-- mkr is a variable
BEGIN
	select * from cars_india_dataset where maker = mkr;

END $$

call pcname("Hyundai");




delimiter $$
CREATE PROCEDURE factorial(IN x INT)
BEGIN
  DECLARE result INT;
  DECLARE i INT;
  SET result = 1;
  SET i = 1;
  WHILE i <= x DO
    SET result = result * i;
    SET i = i + 1;
  END WHILE;

  SELECT x AS Number, result as Factorial;

END;
delimeter $$

CALL factorial(1);
CALL factorial(2);
CALL factorial(4);
CALL factorial(5);
call factorial(7);












CREATE TABLE emp(`first name` VARCHAR(20), id INT PRIMARY KEY);
insert into emp values('HJK', 1);
insert into emp values('ABC', 2);
insert into emp values('DEF', 3);
select * from emp;


DELIMITER |
CREATE PROCEDURE sample_sp_with_params (IN empId INT UNSIGNED, OUT oldName VARCHAR(20), INOUT newName VARCHAR(20))
BEGIN
SELECT `first name` into oldName FROM emp where id = empId;
UPDATE emp SET `first name`= newName where id = empId;
select * from emp;
END
|
DELIMITER ;

set @inout='updatedHJK';
CALL sample_sp_with_params(1,@out,@inout);
select @out,@inout;
select * from emp;

DELIMITER |
CREATE FUNCTION ci (starting_value INT)
RETURNS INT DETERMINISTIC
BEGIN
   DECLARE income INT;
   SET income = 0;

   label1: WHILE income <= 3000 DO
     SET income = income + starting_value;
   END WHILE label1;

   RETURN income;
END; 
|
DELIMITER ;
SELECT ci (1000);


DELIMITER |
CREATE FUNCTION sample_fn_no_param ()
RETURNS INT DETERMINISTIC
BEGIN
DECLARE count INT;
SELECT COUNT(*) INTO count FROM emp;
RETURN count;
END
|
DELIMITER ;
select sample_fn_no_param ();



delimiter $$
CREATE PROCEDURE factorial(IN x INT)
BEGIN
  DECLARE result INT;
  DECLARE i INT;
  SET result = 1;
  SET i = 1;
  WHILE i <= x DO
    SET result = result * i;
    SET i = i + 1;
  END WHILE;

  SELECT x AS Number, result as Factorial;

END;
delimeter $$

CALL factorial(1);
CALL factorial(2);
CALL factorial(4);
CALL factorial(5);
call factorial(7);



-- triggers

CREATE TABLE accounts(account_nun int,amount decimal(10,2));

SET @sum=0;

insert into accounts values(1,10000.23);
insert into accounts values(2,20000);
insert into accounts values(3, 45000);

select @sum;

CREATE TRIGGER trg_insert BEFORE INSERT on accounts
for EACH ROW
SET @sum=@sum+NEW.amount;

-- end1





-- trigger eg = 2

CREATE TABLE test1(a1 INT);
CREATE TABLE test2(a2 INT);
CREATE TABLE test3(a3 INT NOT NULL AUTO_INCREMENT PRIMARY KEY);
CREATE TABLE test4(
  a4 INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  b4 INT DEFAULT 0
);

delimiter |

CREATE TRIGGER testref BEFORE INSERT ON test1
  FOR EACH ROW
  BEGIN
    INSERT INTO test2 SET a2 = NEW.a1;
    DELETE FROM test3 WHERE a3 = NEW.a1;
    UPDATE test4 SET b4 = b4 + 1 WHERE a4 = NEW.a1;
  END;
|

delimiter ;

INSERT INTO test3 (a3) VALUES
  (NULL), (NULL), (NULL), (NULL), (NULL),
  (NULL), (NULL), (NULL), (NULL), (NULL);

INSERT INTO test4 (a4) VALUES
  (0), (0), (0), (0), (0), (0), (0), (0), (0), (0);

INSERT INTO test1 VALUES (1), (3), (1), (7), (1), (8), (4), (4);

select * from test1;
select * from test2;
select * from test3;
select * from test4;