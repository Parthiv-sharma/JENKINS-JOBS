/* ==============================
   ComplianceDB1
   ============================== */
USE ComplianceDB1;
GO

IF NOT EXISTS (
    SELECT 1
    FROM sys.tables
    WHERE name = 'SALESDATA'
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
   ComplianceDB2
   ============================== */
USE ComplianceDB2;
GO

IF NOT EXISTS (
    SELECT 1
    FROM sys.tables
    WHERE name = 'SALESDATA'
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
