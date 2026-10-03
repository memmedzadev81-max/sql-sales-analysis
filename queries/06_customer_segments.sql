-- ============================================================
-- 06. Customer Segments — Member vs Normal, Gender
-- ============================================================

-- Member vs Normal
SELECT
    customer_type,
    COUNT(*) AS transactions,
    ROUND(SUM(total), 2) AS revenue,
    ROUND(AVG(total), 2) AS avg_order_value,
    ROUND(AVG(quantity), 2) AS avg_basket_size,
    ROUND(AVG(rating), 2) AS avg_rating
FROM sales
GROUP BY customer_type
ORDER BY revenue DESC;

-- Gender breakdown
SELECT
    gender,
    COUNT(*) AS transactions,
    ROUND(SUM(total), 2) AS revenue,
    ROUND(AVG(total), 2) AS avg_order_value
FROM sales
GROUP BY gender
ORDER BY revenue DESC;

-- Customer type × Product line
SELECT
    customer_type,
    product_line,
    COUNT(*) AS transactions,
    ROUND(SUM(total), 2) AS revenue
FROM sales
GROUP BY customer_type, product_line
ORDER BY customer_type, revenue DESC;

-- Gender × Product line (preference pattern)
SELECT
    gender,
    product_line,
    COUNT(*) AS transactions,
    ROUND(SUM(total), 2) AS revenue
FROM sales
GROUP BY gender, product_line
ORDER BY gender, revenue DESC;
