-- ======== lookup schema ========
-- ======== static system-defined lookup tables ========
IF OBJECT_ID('lookup.system_MaritalStatusTypes', 'U') IS NULL
BEGIN
    CREATE TABLE lookup.system_MaritalStatusTypes (
        id TINYINT NOT NULL PRIMARY KEY,
        name NVARCHAR(50) NOT NULL,
        code CHAR(1) NOT NULL,
        is_active BIT NOT NULL DEFAULT 1
    );
END
GO

IF OBJECT_ID('lookup.system_ApplicationStatusTypes', 'U') IS NULL
BEGIN
    CREATE TABLE lookup.system_ApplicationStatusTypes (
        id TINYINT NOT NULL PRIMARY KEY,
        name NVARCHAR(100) NOT NULL,
        code NVARCHAR(10) NOT NULL,
        is_active BIT NOT NULL DEFAULT 1
    );
END
GO

IF OBJECT_ID('lookup.system_LanguageCodes', 'U') IS NULL
BEGIN
    CREATE TABLE lookup.system_LanguageCodes (
        id TINYINT NOT NULL PRIMARY KEY,
        name NVARCHAR(50) NOT NULL,
        code CHAR(2) NOT NULL,
        is_active BIT NOT NULL DEFAULT 1
    );
END
GO

IF OBJECT_ID('lookup.system_CountryCodes', 'U') IS NULL
BEGIN
    CREATE TABLE lookup.system_CountryCodes (
        id TINYINT NOT NULL PRIMARY KEY,
        name NVARCHAR(100) NOT NULL,
        code CHAR(2) NOT NULL,
        is_active BIT NOT NULL DEFAULT 1
    );
END
GO

IF OBJECT_ID('lookup.system_CurrencyCodes', 'U') IS NULL
BEGIN
    CREATE TABLE lookup.system_CurrencyCodes (
        id TINYINT NOT NULL PRIMARY KEY,
        name NVARCHAR(50) NOT NULL,
        code CHAR(3) NOT NULL,
        is_active BIT NOT NULL DEFAULT 1
    );
END
GO

IF OBJECT_ID('lookup.system_PaymentMethods', 'U') IS NULL
BEGIN
    CREATE TABLE lookup.system_PaymentMethods (
        id TINYINT NOT NULL PRIMARY KEY,
        name NVARCHAR(100) NOT NULL,
        code NVARCHAR(20) NOT NULL,
        is_active BIT NOT NULL DEFAULT 1
    );
END
GO


