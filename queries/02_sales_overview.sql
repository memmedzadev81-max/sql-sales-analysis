-- ============================================================
-- 02. Sales Overview — KPI summary
-- ============================================================

SELECT
    COUNT(*) AS total_transactions,
    COUNT(DISTINCT invoice_id) AS unique_invoices,
    ROUND(SUM(total), 2) AS total_revenue,
    ROUND(AVG(total), 2) AS avg_order_value,
    ROUND(SUM(quantity), 0) AS total_units_sold,
    ROUND(AVG(quantity), 2) AS avg_basket_size,
    ROUND(AVG(rating), 2) AS avg_rating,
    MIN(date) AS first_sale_date,
    MAX(date) AS last_sale_date
FROM sales;
