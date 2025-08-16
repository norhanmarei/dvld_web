-- ======== lookup schema ========
-- ======== system-defined lookup tables ========
IF OBJECT_ID('lookup.sys_marital_status_types', 'U') IS NULL
BEGIN
    CREATE TABLE lookup.sys_marital_status_types (
        id TINYINT NOT NULL PRIMARY KEY,
        name NVARCHAR(50) NOT NULL,
        code CHAR(1) NOT NULL
    );
END
GO

IF OBJECT_ID('lookup.sys_application_status_types', 'U') IS NULL
BEGIN
    CREATE TABLE lookup.sys_application_status_types (
        id TINYINT NOT NULL PRIMARY KEY,
        name NVARCHAR(100) NOT NULL,
        code NVARCHAR(10) NOT NULL,
        is_active BIT NOT NULL DEFAULT 1
    );
END
GO

IF OBJECT_ID('lookup.sys_language_codes', 'U') IS NULL
BEGIN
    CREATE TABLE lookup.sys_language_codes (
        id TINYINT NOT NULL PRIMARY KEY,
        name NVARCHAR(50) NOT NULL,
        code CHAR(2) NOT NULL,
        is_active BIT NOT NULL DEFAULT 1
    );
END
GO

IF OBJECT_ID('lookup.sys_country_codes', 'U') IS NULL
BEGIN
    CREATE TABLE lookup.sys_country_codes (
        id TINYINT NOT NULL PRIMARY KEY,
        name NVARCHAR(100) NOT NULL,
        code CHAR(2) NOT NULL,
        is_active BIT NOT NULL DEFAULT 1
    );
END
GO

IF OBJECT_ID('lookup.sys_currency_codes', 'U') IS NULL
BEGIN
    CREATE TABLE lookup.sys_currency_codes (
        id TINYINT NOT NULL PRIMARY KEY,
        name NVARCHAR(50) NOT NULL,
        code CHAR(3) NOT NULL,
        is_active BIT NOT NULL DEFAULT 1
    );
END
GO

IF OBJECT_ID('lookup.sys_payment_methods', 'U') IS NULL
BEGIN
    CREATE TABLE lookup.sys_payment_methods (
        id TINYINT NOT NULL PRIMARY KEY,
        name NVARCHAR(100) NOT NULL,
        code NVARCHAR(20) NOT NULL,
        is_active BIT NOT NULL DEFAULT 1
    );
END
GO


IF OBJECT_ID('lookup.sys_gender_types', 'U') IS NULL
BEGIN
    CREATE TABLE lookup.sys_gender_types (
        id TINYINT NOT NULL PRIMARY KEY,
        name NVARCHAR(100) NOT NULL,
        code NVARCHAR(20) NOT NULL
    );
END
GO

IF OBJECT_ID('lookup.sys_timezones', 'U') IS NULL
BEGIN
    CREATE TABLE lookup.sys_timezones (
        id SMALLINT NOT NULL PRIMARY KEY,
        name NVARCHAR(100) NOT NULL,
        windows_id NVARCHAR(100) NULL,
        iana_id NVARCHAR(100) NULL,
        base_utc_offset CHAR(6) NULL, -- e.g. +03:00
        is_dst_observed BIT NULL,
        is_active BIT NOT NULL DEFAULT 1
    );
END
GO

-- ======== semi system-defined lookup tables ========
IF OBJECT_ID('lookup.semi_sys_document_types', 'U') IS NULL
BEGIN
    CREATE TABLE lookup.semi_sys_document_types (
        id SMALLINT NOT NULL PRIMARY KEY,
        name NVARCHAR(100) NOT NULL,
        tenant_id UNIQUEIDENTIFIER NULL,
        jurisdiction_id UNIQUEIDENTIFIER NULL,
        is_active BIT NOT NULL DEFAULT 1
    );
END
GO
