-- http://www.kodyaz.com/articles/kill-all-processes-of-a-database.aspx
-- https://stackoverflow.com/a/7469167

-- First drop all the connections to database

DECLARE @DatabaseName nvarchar(50)

SET @DatabaseName = N'YOUR_DABASE_NAME' 

DECLARE @SQL varchar(max)

SELECT @SQL = COALESCE(@SQL,'') + 'Kill ' + Convert(varchar, SPId) + ';'
FROM MASTER..SysProcesses
WHERE DBId = DB_ID(@DatabaseName) AND SPId <> @@SPId

EXEC(@SQL)


SELECT @SQL =' Drop database '+ @DatabaseName
EXEC(@SQL)
