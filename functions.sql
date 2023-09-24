-- Creating a stored function

delimiter //
CREATE FUNCTION CalculateTotalPrice(Quantity INT, UnitPrice DECIMAL(10, 2))
RETURNS DECIMAL(10, 2) deterministic
BEGIN
    DECLARE Total DECIMAL(10, 2);
    SET Total = Quantity * UnitPrice;
    RETURN Total;
END;
//
delimiter ;

SELECT CalculateTotalPrice(5, 10.99) AS TotalPrice;



delimiter **
create function calculatePercentage (CGPA decimal)
returns decimal(10,3) deterministic
begin
declare calculate decimal(10,3);
set calculate = (cgpa * 8.8);
return calculate;
end;
**
delimiter ;
select calculatePercentage(9.22);