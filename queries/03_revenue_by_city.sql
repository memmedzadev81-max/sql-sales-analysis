-- ============================================================
-- 03. Revenue by City / Branch
-- ============================================================

SELECT
    city,
    branch,
    COUNT(*) AS transactions,
    ROUND(SUM(total), 2) AS revenue,
    ROUND(AVG(total), 2) AS avg_order_value,
    ROUND(100.0 * SUM(total) / (SELECT SUM(total) FROM sales), 2) AS revenue_share_pct
FROM sales
GROUP BY city, branch
ORDER BY revenue DESC;

-- Ranking cities by revenue
SELECT
    city,
    ROUND(SUM(total), 2) AS revenue,
    RANK() OVER (ORDER BY SUM(total) DESC) AS revenue_rank
FROM sales
GROUP BY city
ORDER BY revenue_rank;
