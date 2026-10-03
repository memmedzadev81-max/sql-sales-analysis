-- ============================================================
-- 05. Time Analysis — hour and day patterns
-- ============================================================

-- Sales by hour of day
-- (SQLite: CAST(strftime('%H', time) AS INTEGER)
--  PostgreSQL: EXTRACT(HOUR FROM time)
--  MySQL: HOUR(time)
)

SELECT
    CAST(strftime('%H', time) AS INTEGER) AS hour_of_day,
    COUNT(*) AS transactions,
    ROUND(SUM(total), 2) AS revenue,
    ROUND(AVG(total), 2) AS avg_order_value
FROM sales
GROUP BY hour_of_day
ORDER BY hour_of_day;

-- Sales by day of week (SQLite)
SELECT
    CASE CAST(strftime('%w', date) AS INTEGER)
        WHEN 0 THEN 'Sunday'
        WHEN 1 THEN 'Monday'
        WHEN 2 THEN 'Tuesday'
        WHEN 3 THEN 'Wednesday'
        WHEN 4 THEN 'Thursday'
        WHEN 5 THEN 'Friday'
        WHEN 6 THEN 'Saturday'
    END AS day_name,
    COUNT(*) AS transactions,
    ROUND(SUM(total), 2) AS revenue
FROM sales
GROUP BY day_name
ORDER BY
    CASE day_name
        WHEN 'Monday' THEN 1
        WHEN 'Tuesday' THEN 2
        WHEN 'Wednesday' THEN 3
        WHEN 'Thursday' THEN 4
        WHEN 'Friday' THEN 5
        WHEN 'Saturday' THEN 6
        WHEN 'Sunday' THEN 7
    END;

-- Monthly revenue
SELECT
    strftime('%Y-%m', date) AS month,
    COUNT(*) AS transactions,
    ROUND(SUM(total), 2) AS revenue
FROM sales
GROUP BY month
ORDER BY month;
