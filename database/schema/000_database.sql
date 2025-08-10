DECLARE @DatabaseName SYSNAME = '$(DatabaseName)';

IF '$(DatabaseName)' = 'dvld_prod'
BEGIN
    PRINT 'ERROR: Script execution aborted to protect production database.';
    RETURN;
END


IF EXISTS (SELECT * FROM sys.databases WHERE name = @DatabaseName)
BEGIN
    DECLARE @SQL NVARCHAR(MAX) = '
    ALTER DATABASE [' + @DatabaseName + '] SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE [' + @DatabaseName + '];';

    EXEC sp_executesql @SQL;
    PRINT 'Database dropped: ' + @DatabaseName;
END
ELSE
BEGIN
    PRINT 'Database does not exist: ' + @DatabaseName;
END

EXEC('CREATE DATABASE [' + @DatabaseName + ']');
PRINT 'Database created: ' + @DatabaseName;

