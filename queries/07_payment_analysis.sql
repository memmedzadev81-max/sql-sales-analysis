-- ============================================================
-- 07. Payment Method Analysis
-- ============================================================

SELECT
    payment,
    COUNT(*) AS transactions,
    ROUND(SUM(total), 2) AS revenue,
    ROUND(AVG(total), 2) AS avg_order_value,
    ROUND(100.0 * COUNT(*) / (SELECT COUNT(*) FROM sales), 2) AS txn_share_pct,
    ROUND(100.0 * SUM(total) / (SELECT SUM(total) FROM sales), 2) AS revenue_share_pct
FROM sales
GROUP BY payment
ORDER BY revenue DESC;

-- Payment by customer type
SELECT
    customer_type,
    payment,
    COUNT(*) AS transactions,
    ROUND(SUM(total), 2) AS revenue
FROM sales
GROUP BY customer_type, payment
ORDER BY customer_type, revenue DESC;
