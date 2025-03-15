
DECLARE @i INT = 1;
declare @start_random int
declare @end_random int
declare @rand int

set @start_random = 10
set @end_random = 1000000

WHILE @i <= 1000001
BEGIN

Set @rand =( SELECT FLOOR(RAND()*(@end_random-@start_random+1)+@start_random))

INSERT INTO [dbo].[Number] ([Number]) VALUES  (@rand)


SET @i = @i + 1;
END;