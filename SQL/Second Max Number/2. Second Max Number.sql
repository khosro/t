


DECLARE @t1 DATETIME;
DECLARE @t2 DATETIME;
DECLARE @khosro int;
DECLARE @yours int;
 

SET @t1 = GETDATE();

select min(d.Number) khosro_result from (select top 2 Number from Number   group by number  order by Number desc) d
 -- select min(d.Number) from ( select top 2 Number from  ( select distinct (Number) Number from Number ) d order by d.Number desc ) d

SET @t2 = GETDATE();
set @khosro = (SELECT DATEDIFF(millisecond,@t1,@t2) AS elapsed_ms) 



SET @t1 = GETDATE();

select max(Number) yours_result from Number where Number not in ( select max(Number) from Number )

SET @t2 = GETDATE();
set @yours = (SELECT DATEDIFF(millisecond,@t1,@t2) AS elapsed_ms) 


select @khosro khosro_millisecond ,@yours yours_millisecond, @khosro-@yours 'khosro-yours__millisecond'