-- ============================================================
-- Schema: Retail / Supermarket Sales
-- Compatible with SQLite, PostgreSQL, MySQL (minor type tweaks)
-- ============================================================

DROP TABLE IF EXISTS sales;

CREATE TABLE sales (
    invoice_id          VARCHAR(20) PRIMARY KEY,
    branch              CHAR(1) NOT NULL,
    city                VARCHAR(50) NOT NULL,
    customer_type       VARCHAR(20) NOT NULL,
    gender              VARCHAR(10) NOT NULL,
    product_line        VARCHAR(50) NOT NULL,
    unit_price          DECIMAL(10, 2) NOT NULL,
    quantity            INTEGER NOT NULL,
    tax_5pct            DECIMAL(10, 4),
    total               DECIMAL(12, 4) NOT NULL,
    date                DATE NOT NULL,
    time                TIME NOT NULL,
    payment             VARCHAR(20) NOT NULL,
    cogs                DECIMAL(12, 4),
    gross_margin_pct    DECIMAL(8, 4),
    gross_income        DECIMAL(12, 4),
    rating              DECIMAL(3, 1)
);

-- Helpful indexes for analysis
CREATE INDEX idx_sales_city ON sales(city);
CREATE INDEX idx_sales_date ON sales(date);
CREATE INDEX idx_sales_product ON sales(product_line);
CREATE INDEX idx_sales_customer_type ON sales(customer_type);
