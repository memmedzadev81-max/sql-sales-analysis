# SQL Sales Analysis

Retail questions answered **only with SQL** — no Python notebook in this repo.

Same kind of store data as a supermarket sample, different skill shown: schema, validation queries, aggregations, CTEs, window functions.

---

## vs my other projects

| Repo | Role |
|------|------|
| `supermarket-sales-analysis` | Same domain in **Python** + formal hypothesis tests |
| `customer-shopping-sales-analysis` | Mall / category behaviour (Python) |
| `sql-library-loans` | Different domain (library), also pure SQL |
| **This repo** | Retail KPIs in **SQL files** you can run in SQLite/Postgres/MySQL |

---

## Questions covered

1. Total revenue, orders, average order value
2. Revenue by city / branch
3. Product line performance
4. Hour and day patterns
5. Member vs Normal, gender × product
6. Payment mix
7. Top tickets and rating bands

---

## How to run (SQLite)

```bash
sqlite3 sales.db < schema/01_create_tables.sql
sqlite3 sales.db < schema/02_sample_data.sql
sqlite3 sales.db < queries/01_data_validation.sql
# then 02 … 08
```

---

## Structure

```
sql-sales-analysis/
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

SQL used: JOIN-free single-table aggregates, CASE, CTEs, RANK(), date/time functions.

---

Vusal Mammadzade · [memmedzadev81-max](https://github.com/memmedzadev81-max)
