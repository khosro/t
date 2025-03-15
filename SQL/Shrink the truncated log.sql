

-- https://stackoverflow.com/questions/26110795/how-to-shrink-a-log-file-without-backuping-first



declare @DBName nvarchar(max)
declare @logFileName nvarchar(max)
DECLARE @sql nvarchar(max)
SET NOCOUNT ON;
      
set @DBName = 'Your_DBName';
 
SELECT @logFileName = mf.name
FROM sys.master_files mf
inner join  Sys.Databases  db on mf.database_id = db.database_id
WHERE db.name = @DBName
  AND type = 1

print @DBName
print @logFileName

--SELECT @sql = 'USE [' + @DBName +']'
--print @sql
--EXEC sp_sqlexec @sql

-- Truncate the log by changing the database recovery model to SIMPLE.
SELECT @sql = 'ALTER DATABASE [' + @DBName +'] 
			   SET RECOVERY SIMPLE '
print @sql
EXEC sp_sqlexec @sql

-- Shrink the truncated log file to 1 MB.
-- By default it ends with `_log` and maybe it can be different of database name, for example when we rename database name
SELECT @sql = 'USE [' + @DBName +'] 
			   DBCC SHRINKFILE (['+ @logFileName +'], 1)'
print @sql
EXEC sp_sqlexec @Sql

-- Reset the database recovery model.
SELECT @sql = 'ALTER DATABASE [' + @DBName +']   
			   SET RECOVERY FULL'
print @sql
EXEC sp_sqlexec @sql

 