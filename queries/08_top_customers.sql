-- ============================================================
-- 08. Top Customers & High-Value Patterns
-- (Using invoice as proxy when no separate customer_id exists)
-- ============================================================

-- Highest value single transactions
SELECT
    invoice_id,
    city,
    customer_type,
    gender,
    product_line,
    quantity,
    ROUND(total, 2) AS total,
    rating
FROM sales
ORDER BY total DESC
LIMIT 10;

-- High basket size (quantity >= 8)
SELECT
    product_line,
    COUNT(*) AS high_qty_txns,
    ROUND(AVG(total), 2) AS avg_total,
    ROUND(AVG(rating), 2) AS avg_rating
FROM sales
WHERE quantity >= 8
GROUP BY product_line
ORDER BY high_qty_txns DESC;

-- Rating vs spend (simple bands)
SELECT
    CASE
        WHEN rating >= 8 THEN 'High (8-10)'
        WHEN rating >= 6 THEN 'Medium (6-7.9)'
        ELSE 'Low (<6)'
    END AS rating_band,
    COUNT(*) AS transactions,
    ROUND(AVG(total), 2) AS avg_order_value,
    ROUND(SUM(total), 2) AS revenue
FROM sales
GROUP BY rating_band
ORDER BY
    CASE rating_band
        WHEN 'High (8-10)' THEN 1
        WHEN 'Medium (6-7.9)' THEN 2
        ELSE 3
    END;
