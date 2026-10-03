-- ============================================================
-- Sample data (small subset for demo / testing)
-- Replace with full dataset for real analysis
-- ============================================================

INSERT INTO sales (
    invoice_id, branch, city, customer_type, gender, product_line,
    unit_price, quantity, tax_5pct, total, date, time, payment,
    cogs, gross_margin_pct, gross_income, rating
) VALUES
('INV-001', 'A', 'Yangon', 'Member', 'Female', 'Health and beauty', 74.69, 7, 26.1415, 548.9715, '2019-01-05', '13:08:00', 'Ewallet', 522.83, 4.7619, 26.1415, 9.1),
('INV-002', 'C', 'Naypyitaw', 'Normal', 'Female', 'Electronic accessories', 15.28, 5, 3.8200, 80.2200, '2019-03-08', '10:29:00', 'Cash', 76.40, 4.7619, 3.8200, 9.6),
('INV-003', 'A', 'Yangon', 'Normal', 'Male', 'Home and lifestyle', 46.33, 7, 16.2155, 340.5255, '2019-03-03', '13:23:00', 'Credit card', 324.31, 4.7619, 16.2155, 7.4),
('INV-004', 'A', 'Yangon', 'Member', 'Male', 'Health and beauty', 58.22, 8, 23.2880, 489.0480, '2019-01-27', '20:33:00', 'Ewallet', 465.76, 4.7619, 23.2880, 8.4),
('INV-005', 'A', 'Yangon', 'Normal', 'Male', 'Sports and travel', 86.31, 7, 30.2085, 634.3785, '2019-02-08', '10:37:00', 'Ewallet', 604.17, 4.7619, 30.2085, 5.3),
('INV-006', 'C', 'Naypyitaw', 'Member', 'Female', 'Food and beverages', 85.39, 7, 29.8865, 627.6165, '2019-03-25', '18:30:00', 'Ewallet', 597.73, 4.7619, 29.8865, 8.2),
('INV-007', 'A', 'Yangon', 'Member', 'Female', 'Electronic accessories', 73.56, 10, 36.7800, 772.3800, '2019-02-25', '11:32:00', 'Cash', 735.60, 4.7619, 36.7800, 5.8),
('INV-008', 'C', 'Naypyitaw', 'Normal', 'Female', 'Home and lifestyle', 73.03, 10, 36.5150, 766.8150, '2019-02-24', '17:15:00', 'Ewallet', 730.30, 4.7619, 36.5150, 8.0),
('INV-009', 'A', 'Yangon', 'Member', 'Female', 'Fashion accessories', 36.26, 2, 3.6260, 76.1460, '2019-01-10', '14:20:00', 'Credit card', 72.52, 4.7619, 3.6260, 6.5),
('INV-010', 'B', 'Mandalay', 'Member', 'Male', 'Food and beverages', 54.84, 3, 8.2260, 172.7460, '2019-02-20', '19:05:00', 'Cash', 164.52, 4.7619, 8.2260, 7.1),
('INV-011', 'B', 'Mandalay', 'Normal', 'Female', 'Sports and travel', 25.90, 6, 7.7700, 163.1700, '2019-01-15', '12:40:00', 'Ewallet', 155.40, 4.7619, 7.7700, 8.8),
('INV-012', 'C', 'Naypyitaw', 'Member', 'Male', 'Electronic accessories', 41.65, 4, 8.3300, 174.9300, '2019-03-12', '16:50:00', 'Credit card', 166.60, 4.7619, 8.3300, 6.9),
('INV-013', 'A', 'Yangon', 'Normal', 'Female', 'Health and beauty', 62.10, 5, 15.5250, 326.0250, '2019-02-01', '11:10:00', 'Cash', 310.50, 4.7619, 15.5250, 9.0),
('INV-014', 'B', 'Mandalay', 'Member', 'Male', 'Fashion accessories', 29.50, 8, 11.8000, 247.8000, '2019-03-18', '15:25:00', 'Ewallet', 236.00, 4.7619, 11.8000, 7.6),
('INV-015', 'C', 'Naypyitaw', 'Normal', 'Female', 'Home and lifestyle', 55.00, 4, 11.0000, 231.0000, '2019-01-22', '09:45:00', 'Credit card', 220.00, 4.7619, 11.0000, 8.3);
