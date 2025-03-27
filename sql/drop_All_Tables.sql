
-- https://stackoverflow.com/questions/27606518/how-to-drop-all-tables-from-a-database-with-one-sql-query

EXEC sp_MSforeachtable @command1 = "DROP TABLE ?"
