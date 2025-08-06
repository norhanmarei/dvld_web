-- database/schema/00_schemas.sql

IF NOT EXISTS (SELECT 1 FROM sys.schemas WHERE name = N'core')
    EXEC(N'CREATE SCHEMA core');
GO

IF NOT EXISTS (SELECT 1 FROM sys.schemas WHERE name = N'lookup')
    EXEC(N'CREATE SCHEMA lookup');
GO

IF NOT EXISTS (SELECT 1 FROM sys.schemas WHERE name = N'payment')
    EXEC(N'CREATE SCHEMA payment');
GO

IF NOT EXISTS (SELECT 1 FROM sys.schemas WHERE name = N'config')
    EXEC(N'CREATE SCHEMA config');
GO

IF NOT EXISTS (SELECT 1 FROM sys.schemas WHERE name = N'log')
    EXEC(N'CREATE SCHEMA log');
GO

IF NOT EXISTS (SELECT 1 FROM sys.schemas WHERE name = N'job')
    EXEC(N'CREATE SCHEMA job');
GO

IF NOT EXISTS (SELECT 1 FROM sys.schemas WHERE name = N'versioning')
    EXEC(N'CREATE SCHEMA versioning');
GO

IF NOT EXISTS (SELECT 1 FROM sys.schemas WHERE name = N'client')
    EXEC(N'CREATE SCHEMA client');
GO

IF NOT EXISTS (SELECT 1 FROM sys.schemas WHERE name = N'jurisdiction')
    EXEC(N'CREATE SCHEMA jurisdiction');
GO

IF NOT EXISTS (SELECT 1 FROM sys.schemas WHERE name = N'auth')
    EXEC(N'CREATE SCHEMA auth');
GO

IF NOT EXISTS (SELECT 1 FROM sys.schemas WHERE name = N'integration')
    EXEC(N'CREATE SCHEMA integration');
GO

IF NOT EXISTS (SELECT 1 FROM sys.schemas WHERE name = N'shared')
    EXEC(N'CREATE SCHEMA shared');
GO

