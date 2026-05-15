# Python — Data Cleaning

This folder contains the Jupyter notebook used to clean all five raw CSV files from the Olist Brazilian E-Commerce dataset. The cleaned output files are stored in the data/cleaned directory and serve as the single source of truth for all subsequent stages of this project.

---

## Notebook

| File | Description |
|---|---|
| olist_cleaning.ipynb | Full cleaning pipeline for all five CSV files |

---

## Approach

A two step cleaning approach was followed. First a reusable function was applied to all five files to handle common tasks. Then each file received individual attention for its own specific issues.

**Common cleaning applied to all files:**

Duplicate removal and column name standardization were applied to all five dataframes in a single loop to avoid repetition.

**File specific cleaning:**

| File | Issues Addressed |
|---|---|
| orders | Five timestamp columns converted from object to datetime |
| items | Shipping limit date converted from object to datetime |
| payments | not_defined values in payment_type replaced with Unknown |
| customers | Zip code prefix converted from int to string, city names converted to title case |
| reviews | Two comment columns with over 85% null values dropped, two timestamp columns converted to datetime |

---

## Null Value Decisions

| File | Column | Null Count | Decision | Reason |
|---|---|---|---|---|
| orders | order_approved_at | 160 | Kept as NaT | Orders cancelled before approval |
| orders | order_delivered_carrier_date | 1783 | Kept as NaT | Orders not yet shipped |
| orders | order_delivered_customer_date | 2965 | Kept as NaT | Orders not yet delivered |
| reviews | review_comment_title | 87656 | Column dropped | Over 85% null, no analytical value |
| reviews | review_comment_message | 58247 | Column dropped | Majority null, optional text field |

---

## Output Files

| File | Description |
|---|---|
| orders_cleaned.csv | 99,441 orders with clean timestamps and status |
| items_cleaned.csv | Order items with price and freight values |
| payments_cleaned.csv | Payment type and value per order |
| customers_cleaned.csv | Customer city and state with clean formatting |
| reviews_cleaned.csv | Review scores and response timestamps |