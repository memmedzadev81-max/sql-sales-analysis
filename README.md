# 📊 SQL Sales Analysis

> Retail sales analysis written entirely in **SQL** — data validation, revenue breakdown, customer behaviour, product performance and actionable business insights.

![SQL](https://img.shields.io/badge/SQL-PostgreSQL%20%7C%20MySQL%20%7C%20SQLite-blue) ![Portfolio](https://img.shields.io/badge/Portfolio-Data%20Analyst-green) ![License](https://img.shields.io/badge/License-MIT-green)

---

## 🚀 1. Project Overview

This project answers real business questions using pure SQL:

- Where does revenue come from?
- Who are the best customers?
- Which products and categories drive sales?
- Are there patterns by time, branch or payment method?

**Workflow:** Schema → Sample data → Validation → Core analysis → Segmentation → Insights.

---

## 🎯 2. Business Questions

| # | Question |
|---|----------|
| 1 | What is total revenue, order count and average order value? |
| 2 | Which cities / branches generate the most revenue? |
| 3 | Which product lines sell best? |
| 4 | What are the peak sales hours and days? |
| 5 | How do Member vs Normal customers differ? |
| 6 | What is the payment method mix? |
| 7 | Who are the top customers by spend? |
| 8 | Are there gender or customer-type patterns by product line? |

---

## 📂 3. Dataset

Based on a **supermarket / retail transactions** style dataset (compatible with the public Supermarket Sales sample).

| Column | Type | Description |
|--------|------|-------------|
| invoice_id | TEXT | Unique transaction ID |
| branch | TEXT | Branch code (A/B/C) |
| city | TEXT | City name |
| customer_type | TEXT | Member / Normal |
| gender | TEXT | Male / Female |
| product_line | TEXT | Product category |
| unit_price | DECIMAL | Price per unit |
| quantity | INT | Units sold |
| tax_5pct | DECIMAL | Tax |
| total | DECIMAL | Line total |
| date | DATE | Transaction date |
| time | TIME | Transaction time |
| payment | TEXT | Payment method |
| cogs | DECIMAL | Cost of goods |
| gross_margin_pct | DECIMAL | Margin % |
| gross_income | DECIMAL | Gross income |
| rating | DECIMAL | Customer rating |

---

## 🛠️ 4. How to Run

### Option A — SQLite (easiest)

```bash
sqlite3 sales.db < schema/01_create_tables.sql
sqlite3 sales.db < schema/02_sample_data.sql
sqlite3 sales.db < queries/01_data_validation.sql
# ... run other query files the same way
```

### Option B — PostgreSQL / MySQL

1. Create a database.
2. Run `schema/01_create_tables.sql`
3. Load data (sample or your own CSV via `COPY` / `LOAD DATA`).
4. Run files in `queries/` one by one.

---

## 📁 5. Project Structure

```
sql-sales-analysis/
├── README.md
├── LICENSE
├── schema/
│   ├── 01_create_tables.sql
│   └── 02_sample_data.sql
└── queries/
    ├── 01_data_validation.sql
    ├── 02_sales_overview.sql
    ├── 03_revenue_by_city.sql
    ├── 04_product_performance.sql
    ├── 05_time_analysis.sql
    ├── 06_customer_segments.sql
    ├── 07_payment_analysis.sql
    └── 08_top_customers.sql
```

---

## 💡 6. Key SQL Skills Demonstrated

- Aggregations (`SUM`, `AVG`, `COUNT`, `ROUND`)
- `GROUP BY` + `ORDER BY`
- `CASE WHEN` for segmentation
- Date / time extraction
- Window functions (`RANK`, `ROW_NUMBER` — where supported)
- CTEs (`WITH`)
- Data quality checks

---

## 🧭 7. Sample Insights (from typical retail data)

1. Revenue is relatively balanced across cities — focus on operations, not only geography.
2. Peak hours are usually midday and evening — staff and promotions should match that.
3. Quantity (basket size) often drives total more than unit price alone.
4. Member vs Normal differences are often smaller than expected — loyalty programs need clear value.

*(Re-run the queries on your data to confirm numbers.)*

---

## 👤 8. Author

**Vusal Mammadzade** — Data Analyst  
GitHub: [memmedzadev81-max](https://github.com/memmedzadev81-max)

*SQL portfolio project — pure SQL analysis for data analyst roles.*
