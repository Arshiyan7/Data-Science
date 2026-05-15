# Olist E-Commerce Analytics Project

An end-to-end data analytics project built on the Olist Brazilian E-Commerce dataset. The goal of this project is to demonstrate a complete analytics pipeline across four industry-standard tools — Python, SQL, Excel, and Power BI — using a single real-world dataset from raw ingestion to interactive dashboard.

---

## Tools and Technologies

| Tool | Purpose |
|---|---|
| Python (Pandas) | Data cleaning and preprocessing |
| SQL (PostgreSQL) | Business question analysis |
| Excel | Pivot tables and interactive dashboard |
| Power BI | Final interactive dashboard with DAX measures |

---

## Dataset

The raw dataset is publicly available on Kaggle and was not included in this repository to keep it lightweight.

[Download the Olist Dataset from Kaggle](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)

Five CSV files were used out of the nine available:

| File | Description |
|---|---|
| olist_orders_dataset.csv | Order IDs, customer IDs, order status, timestamps |
| olist_order_items_dataset.csv | Products per order, price, freight, seller ID |
| olist_order_payments_dataset.csv | Payment type, installments, payment value |
| olist_order_reviews_dataset.csv | Review scores and response timestamps |
| olist_customers_dataset.csv | Customer city, state, zip code |

---

## Project Structure

```text
olist-analytics-project/
├── data/
│   ├── orders_cleaned.csv
│   ├── items_cleaned.csv
│   ├── payments_cleaned.csv
│   ├── customers_cleaned.csv
│   └── reviews_cleaned.csv
│
├── python/
│   ├── olist_cleaning.ipynb
│   └── README.md
│
├── excel/
│   ├── olist_dashboard.xlsx
│   └── README.md
│
├── sql/
│   ├── olist_analysis.sql
│   └── README.md
│
├── powerbi/
│   ├── olist_dashboard.pbix
│   └── README.md
│
└── README.md
```

## Author

Arshiyan Mairaj
[LinkedIn](https://linkedin.com/in/arshiyanmairaj/) | [GitHub](https://github.com/Arshiyan7)