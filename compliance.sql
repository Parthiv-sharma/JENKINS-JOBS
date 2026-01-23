/* ==============================
   Create ComplianceDB1
   ============================== */
IF NOT EXISTS (SELECT 1 FROM sys.databases WHERE name = 'ComplianceDB1')
BEGIN
    CREATE DATABASE ComplianceDB1;
END;
GO

USE ComplianceDB1;
GO

IF NOT EXISTS (
    SELECT 1 FROM sys.tables WHERE name = 'SALESDATA'
)
BEGIN
    CREATE TABLE SALESDATA (
        sale_id INT IDENTITY(1,1) PRIMARY KEY,
        product_name VARCHAR(100) NOT NULL,
        amount DECIMAL(10,2) NOT NULL,
        created_at DATETIME DEFAULT GETDATE()
    );
END;
GO

/* ==============================
   Create ComplianceDB2
   ============================== */
IF NOT EXISTS (SELECT 1 FROM sys.databases WHERE name = 'ComplianceDB2')
BEGIN
    CREATE DATABASE ComplianceDB2;
END;
GO

USE ComplianceDB2;
GO

IF NOT EXISTS (
    SELECT 1 FROM sys.tables WHERE name = 'SALESDATA'
)
BEGIN
    CREATE TABLE SALESDATA (
        sale_id INT IDENTITY(1,1) PRIMARY KEY,
        product_name VARCHAR(100) NOT NULL,
        amount DECIMAL(10,2) NOT NULL,
        created_at DATETIME DEFAULT GETDATE()
    );
END;
GO
