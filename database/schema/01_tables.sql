-- 1) Create the lookup schema if it doesn't exist
IF NOT EXISTS (
    SELECT 1 
    FROM sys.schemas 
    WHERE name = 'lookup'
)
EXEC('CREATE SCHEMA [lookup]');
GO

-- 2) Create all lookup tables using TINYINT for id

CREATE TABLE lookup.TestTypes (
    id         TINYINT       IDENTITY(1,1) PRIMARY KEY,
    name       VARCHAR(100)  NOT NULL,
    is_active  BIT           NOT NULL CONSTRAINT DF_TestTypes_IsActive DEFAULT (1)
);

CREATE TABLE lookup.IssueReasons (
    id         TINYINT       IDENTITY(1,1) PRIMARY KEY,
    name       VARCHAR(100)  NOT NULL,
    is_active  BIT           NOT NULL CONSTRAINT DF_IssueReasons_IsActive DEFAULT (1)
);

CREATE TABLE lookup.LicenseClasses (
    id         TINYINT       IDENTITY(1,1) PRIMARY KEY,
    name       VARCHAR(100)  NOT NULL,
    is_active  BIT           NOT NULL CONSTRAINT DF_LicenseClasses_IsActive DEFAULT (1)
);

CREATE TABLE lookup.JurisdictionTypes (
    id         TINYINT       IDENTITY(1,1) PRIMARY KEY,
    name       VARCHAR(100)  NOT NULL,
    is_active  BIT           NOT NULL CONSTRAINT DF_JurisdictionTypes_IsActive DEFAULT (1)
);

CREATE TABLE lookup.ClientTypes (
    id         TINYINT       IDENTITY(1,1) PRIMARY KEY,
    name       VARCHAR(100)  NOT NULL,
    is_active  BIT           NOT NULL CONSTRAINT DF_ClientTypes_IsActive DEFAULT (1)
);

CREATE TABLE lookup.MaritalStatusTypes (
    id         TINYINT       IDENTITY(1,1) PRIMARY KEY,
    name       VARCHAR(100)  NOT NULL,
    is_active  BIT           NOT NULL CONSTRAINT DF_MaritalStatusTypes_IsActive DEFAULT (1)
);

CREATE TABLE lookup.LanguageCodes (
    id         TINYINT       IDENTITY(1,1) PRIMARY KEY,
    name       VARCHAR(100)  NOT NULL,
    is_active  BIT           NOT NULL CONSTRAINT DF_LanguageCodes_IsActive DEFAULT (1)
);

CREATE TABLE lookup.GenderTypes (
    id         TINYINT       IDENTITY(1,1) PRIMARY KEY,
    name       VARCHAR(100)  NOT NULL,
    is_active  BIT           NOT NULL CONSTRAINT DF_GenderTypes_IsActive DEFAULT (1)
);

CREATE TABLE lookup.ContactTypes (
    id         TINYINT       IDENTITY(1,1) PRIMARY KEY,
    name       VARCHAR(100)  NOT NULL,
    is_active  BIT           NOT NULL CONSTRAINT DF_ContactTypes_IsActive DEFAULT (1)
);

CREATE TABLE lookup.DocumentTypes (
    id         TINYINT       IDENTITY(1,1) PRIMARY KEY,
    name       VARCHAR(100)  NOT NULL,
    is_active  BIT           NOT NULL CONSTRAINT DF_DocumentTypes_IsActive DEFAULT (1)
);

CREATE TABLE lookup.DeviceTypes (
    id         TINYINT       IDENTITY(1,1) PRIMARY KEY,
    name       VARCHAR(100)  NOT NULL,
    is_active  BIT           NOT NULL CONSTRAINT DF_DeviceTypes_IsActive DEFAULT (1)
);

CREATE TABLE lookup.NotificationTypes (
    id         TINYINT       IDENTITY(1,1) PRIMARY KEY,
    name       VARCHAR(100)  NOT NULL,
    is_active  BIT           NOT NULL CONSTRAINT DF_NotificationTypes_IsActive DEFAULT (1)
);

CREATE TABLE lookup.TimezoneOffsets (
    id         TINYINT       IDENTITY(1,1) PRIMARY KEY,
    name       VARCHAR(100)  NOT NULL,
    is_active  BIT           NOT NULL CONSTRAINT DF_TimezoneOffsets_IsActive DEFAULT (1)
);

CREATE TABLE lookup.PaymentMethods (
    id         TINYINT       IDENTITY(1,1) PRIMARY KEY,
    name       VARCHAR(100)  NOT NULL,
    is_active  BIT           NOT NULL CONSTRAINT DF_PaymentMethods_IsActive DEFAULT (1)
);

CREATE TABLE lookup.CountryCodes (
    id         TINYINT       IDENTITY(1,1) PRIMARY KEY,
    name       VARCHAR(100)  NOT NULL,
    is_active  BIT           NOT NULL CONSTRAINT DF_CountryCodes_IsActive DEFAULT (1)
);

CREATE TABLE lookup.ApplicationTypes (
    id         TINYINT       IDENTITY(1,1) PRIMARY KEY,
    name       VARCHAR(100)  NOT NULL,
    is_active  BIT           NOT NULL CONSTRAINT DF_ApplicationTypes_IsActive DEFAULT (1)
);

CREATE TABLE lookup.ApplicationStatusTypes (
    id         TINYINT       IDENTITY(1,1) PRIMARY KEY,
    name       VARCHAR(100)  NOT NULL,
    is_active  BIT           NOT NULL CONSTRAINT DF_ApplicationStatusTypes_IsActive DEFAULT (1)
);

