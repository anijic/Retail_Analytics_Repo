-- Purpose: Rearrange columns for readability and export the cleaned dataset.

USE uk_db;

-- 1. Create a rearranged, final table
DROP TABLE IF EXISTS online_retail_final;
CREATE TABLE online_retail_final AS
SELECT
  InvoiceNo,
  InvoiceDate,
  InvoiceYearMonth,
  CustomerID,
  Country,
  StockCode,
  Description,
  Quantity,
  UnitPrice,
  TotalSpent
FROM online_retail;

-- 2. Swap tables
DROP TABLE online_retail;
RENAME TABLE online_retail_final TO online_retail;

-- 3. Export cleaned data with headers
--    Note: MySQL's SELECT ... INTO OUTFILE won't export column names.
--    We prepend a header row manually via UNION ALL.

(SELECT 'InvoiceNo','InvoiceDate','InvoiceYearMonth','CustomerID','Country',
        'StockCode','Description','Quantity','UnitPrice','TotalSpent')
UNION ALL
SELECT
  InvoiceNo,
  DATE_FORMAT(InvoiceDate, '%Y-%m-%d %H:%i:%s'),
  InvoiceYearMonth,
  CustomerID,
  Country,
  StockCode,
  Description,
  Quantity,
  UnitPrice,
  TotalSpent
FROM online_retail
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/online_retail_cleaned.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';
