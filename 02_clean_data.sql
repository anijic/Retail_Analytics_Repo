-- Purpose: Clean and standardize the imported data.

USE uk_db;

-- 1. Parse and convert `InvoiceDate` to DATETIME
UPDATE online_retail
SET InvoiceDate = STR_TO_DATE(InvoiceDate, '%m/%d/%Y %H:%i');
ALTER TABLE online_retail
  MODIFY InvoiceDate DATETIME;

-- 2. Keep only transactions between 2010-12-01 and 2011-11-30
CREATE TABLE IF NOT EXISTS online_retail_backup AS
  SELECT * FROM online_retail;

DELETE FROM online_retail
WHERE InvoiceDate < '2010-12-01'
   OR InvoiceDate >= '2011-12-01';

-- 3. Remove rows with missing critical fields
DELETE FROM online_retail
WHERE CustomerID IS NULL
   OR CustomerID = 0
   OR Description = '';

-- 4. Trim whitespace in text fields
UPDATE online_retail
SET
    InvoiceNo   = TRIM(InvoiceNo),
    StockCode   = TRIM(StockCode),
    Description = TRIM(Description),
    Country     = TRIM(Country);

-- 5. Deduplicate exact duplicate records
CREATE TABLE online_retail_tmp AS
  SELECT DISTINCT * FROM online_retail;
TRUNCATE TABLE online_retail;
INSERT INTO online_retail SELECT * FROM online_retail_tmp;
DROP TABLE online_retail_tmp;

-- 6. Remove invalid codes and outliers
-- 6.1 InvoiceNo must be 6-digit numeric
DELETE FROM online_retail
WHERE InvoiceNo NOT REGEXP '^[0-9]{6}$';

-- 6.2 StockCode must be 5-digit numeric
DELETE FROM online_retail
WHERE StockCode NOT REGEXP '^[0-9]{5}$';

-- 6.3 UnitPrice must be positive
DELETE FROM online_retail
WHERE UnitPrice <= 0;

-- 6.4 Quantity must be non-negative
DELETE FROM online_retail
WHERE Quantity < 0;

-- 7. Clean up any 'Unspecified' Country entries with hidden chars
UPDATE online_retail
SET Country = TRIM(REGEXP_REPLACE(Country, '[\\r\\n]+$', ''))
WHERE Country LIKE '%Unspecified%';
DELETE FROM online_retail WHERE Country = 'Unspecified';

-- 8. Derive `InvoiceYearMonth` and `TotalSpent`
ALTER TABLE online_retail
  ADD COLUMN InvoiceYearMonth CHAR(7) AFTER InvoiceDate,
  ADD COLUMN TotalSpent DECIMAL(12,2) AFTER UnitPrice;

UPDATE online_retail
SET
  InvoiceYearMonth = DATE_FORMAT(InvoiceDate, '%Y-%m'),
  TotalSpent       = Quantity * UnitPrice;
