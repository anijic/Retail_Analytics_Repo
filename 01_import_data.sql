-- Purpose: Set up the database, create base table, and bulk-load the raw CSV.

-- 1. Create and select the working database
CREATE DATABASE IF NOT EXISTS uk_db;
USE uk_db;

-- 2. Define the table structure for raw data import
DROP TABLE IF EXISTS online_retail;
CREATE TABLE online_retail (
    InvoiceNo   VARCHAR(20),
    StockCode   VARCHAR(20),
    Description TEXT,
    Quantity    INT,
    InvoiceDate VARCHAR(20),
    UnitPrice   DECIMAL(10,2),
    CustomerID  INT,
    Country     VARCHAR(50)
);

-- 3. Bulk-load the CSV file into `online_retail`
--    Note: InvoiceDate is VARCHAR initially to avoid parsing errors.
LOAD DATA LOCAL INFILE 'C:/Users/path/to/online_retail.csv'
INTO TABLE online_retail
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- 4. Quick sanity checks
SELECT COUNT(*) AS total_rows FROM online_retail;
SELECT * FROM online_retail LIMIT 5;
