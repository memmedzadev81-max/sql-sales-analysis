-- ============================================================
-- 01. Data Validation
-- Check row counts, nulls, ranges and basic data quality
-- ============================================================

-- 1. Total rows
SELECT COUNT(*) AS total_rows
FROM sales;

-- 2. Null check (should be 0 for key columns)
SELECT
    SUM(CASE WHEN invoice_id IS NULL THEN 1 ELSE 0 END) AS null_invoice,
    SUM(CASE WHEN city IS NULL THEN 1 ELSE 0 END) AS null_city,
    SUM(CASE WHEN total IS NULL THEN 1 ELSE 0 END) AS null_total,
    SUM(CASE WHEN date IS NULL THEN 1 ELSE 0 END) AS null_date
FROM sales;

-- 3. Distinct values for categorical columns
SELECT 'city' AS col, city AS value, COUNT(*) AS cnt
FROM sales
GROUP BY city
UNION ALL
SELECT 'customer_type', customer_type, COUNT(*)
FROM sales
GROUP BY customer_type
UNION ALL
SELECT 'payment', payment, COUNT(*)
FROM sales
GROUP BY payment
ORDER BY col, cnt DESC;

-- 4. Numeric ranges
SELECT
    MIN(total) AS min_total,
    MAX(total) AS max_total,
    AVG(total) AS avg_total,
    MIN(quantity) AS min_qty,
    MAX(quantity) AS max_qty,
    MIN(rating) AS min_rating,
    MAX(rating) AS max_rating
FROM sales;

-- 5. Duplicate invoice check
SELECT invoice_id, COUNT(*) AS cnt
FROM sales
GROUP BY invoice_id
HAVING COUNT(*) > 1;
