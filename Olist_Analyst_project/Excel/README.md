# Excel — Pivot Tables and Dashboard

This folder contains the Excel workbook built on top of the five cleaned CSV files. The workbook demonstrates data modelling across multiple tables, business question analysis using pivot tables, and an interactive dashboard with connected slicers.

---

## File

| File | Description |
|---|---|
| olist_dashboard.xlsx | Full workbook with data sheets, analysis sheet, and dashboard |

---

## Workbook Structure

| Sheet | Purpose |
|---|---|
| orders_cleaned | Raw cleaned data — orders |
| items_cleaned | Raw cleaned data — order items |
| payments_cleaned | Raw cleaned data — payments |
| customers_cleaned | Raw cleaned data — customers |
| reviews_cleaned | Raw cleaned data — reviews |
| Analyze | All pivot tables answering business questions |
| Dashboard | Interactive charts and scorecards |

---

## Data Model

All five tables were loaded into Excel using Power Query and added to the Data Model. The following relationships were created manually:

| Table | Column | Related Table | Column |
|---|---|---|---|
| orders | customer_id | customers | customer_id |
| orders | order_id | items | order_id |
| orders | order_id | payments | order_id |
| orders | order_id | reviews | order_id |

The orders table acts as the central bridge connecting all other tables.

---

## Business Questions Answered

| Question | Tool Used |
|---|---|
| What are the top 5 states by total revenue? | Pivot Table |
| What is the most used payment type by order count? | Pivot Table |
| What is the average review score by customer state? | Pivot Table |
| What is the order count by order status? | Pivot Table |
| What is the total revenue trend by month and year? | Pivot Table |

---

## Dashboard

The dashboard sheet contains five charts and three scorecards built from the pivot tables on the Analyze sheet. A year and month slicer is connected to all five charts simultaneously allowing dynamic filtering across the entire dashboard.

**Scorecards:**

| Metric | Value |
|---|---|
| Total Revenue | R$ 13,591,643.70 |
| Total Orders | 99,441 |
| Average Review Score | 4.09 |

**Charts:**

| Chart | Type |
|---|---|
| Revenue by State (Top 5) | Bar chart |
| Payment Type Breakdown | Donut chart |
| Average Review Score by State | Bar chart |
| Order Count by Status | Bar chart |
| Revenue Trend Over Time | Line chart |

---

## Key Challenge

Adding a calculated column directly to the Excel table did not reflect in the Data Model because Power Query loads data from the source CSV, not from manually added columns. Calculated columns need to be created inside Power Query using the Add Column feature to be recognized by the Data Model.

## Key Insights

**Revenue by Geography** — Sao Paulo generates over R$ 5.2 million in revenue, more than double the second highest state Rio de Janeiro at R$ 1.8 million.

**Customer Satisfaction** — Rio de Janeiro is the second highest revenue state but has a below average review score of 3.87, indicating high sales volume does not always correlate with customer satisfaction.

**Payment Preferences** — Credit card is the dominant payment method accounting for nearly 74% of all transactions, followed by boleto at 19%.

**Revenue Trend** — November 2017 recorded the highest single month revenue at over R$ 1 million driven by the Black Friday effect. Revenue stabilized consistently between R$ 850k and R$ 983k throughout 2018 indicating a maturing business.

**Order Fulfillment** — 97% of all orders have a delivered status reflecting a strong fulfillment operation.