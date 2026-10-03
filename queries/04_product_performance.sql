-- ============================================================
-- 04. Product Line Performance
-- ============================================================

SELECT
    product_line,
    COUNT(*) AS transactions,
    ROUND(SUM(quantity), 0) AS units_sold,
    ROUND(SUM(total), 2) AS revenue,
    ROUND(AVG(total), 2) AS avg_order_value,
    ROUND(AVG(rating), 2) AS avg_rating,
    ROUND(100.0 * SUM(total) / (SELECT SUM(total) FROM sales), 2) AS revenue_share_pct
FROM sales
GROUP BY product_line
ORDER BY revenue DESC;

-- Top product line per city
WITH city_product AS (
    SELECT
        city,
        product_line,
        ROUND(SUM(total), 2) AS revenue,
        RANK() OVER (PARTITION BY city ORDER BY SUM(total) DESC) AS rnk
    FROM sales
    GROUP BY city, product_line
)
SELECT city, product_line, revenue
FROM city_product
WHERE rnk = 1
ORDER BY city;
