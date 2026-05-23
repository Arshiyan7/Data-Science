# SQL — Business Analysis

This folder contains the SQL analysis performed on the five cleaned Olist CSV files imported into PostgreSQL. The goal was to answer 10 business questions of increasing complexity covering revenue, delivery performance, customer satisfaction, and payment behavior.

---

## File

| File | Description |
|---|---|
| olist_analysis.sql | All 10 business queries organized by difficulty |

---

## Database Setup

Database: PostgreSQL
Tables: orders, items, payments, customers, reviews

All five tables were imported from the cleaned CSV files produced in the Python stage. Relationships between tables are established through order_id and customer_id as the primary join keys.

---

## Table Relationships

| Table | Join Column | Related Table | Join Column |
|---|---|---|---|
| orders | customer_id | customers | customer_id |
| orders | order_id | items | order_id |
| orders | order_id | payments | order_id |
| orders | order_id | reviews | order_id |

---

## Business Questions

### Basic

| Question | Techniques Used |
|---|---|
| Which payment type generates the most revenue? | GROUP BY, SUM, WHERE |
| Which sellers are in the top 10 by revenue? | GROUP BY, SUM, LIMIT |
| What are the top 5 states by total revenue? | 3 table JOIN, GROUP BY, SUM |

### Intermediate

| Question | Techniques Used |
|---|---|
| What is the monthly revenue trend over time? | JOIN, TO_CHAR, GROUP BY, ORDER BY MIN |
| What is the average review score per payment type? | JOIN, AVG, WHERE |
| How many orders did each customer state place and what is their average order value? | 3 table JOIN, COUNT, AVG, GROUP BY |
| What is the average delivery time in days per customer state? | JOIN, EXTRACT, AVG, WHERE IS NOT NULL |

### Advanced

| Question | Techniques Used |
|---|---|
| What percentage of orders were delivered late? | CTE, COUNT, arithmetic |
| What percentage of orders were delivered late per customer state? | Chained CTEs, JOIN, GROUP BY |
| Which states have both high late delivery rate and low review score? | 3 chained CTEs, multiple JOINs, WHERE filtering |

---

## Key Insights

**Late Delivery Rate** — 8.11% of all orders were delivered late, meaning over 91% arrived on time which reflects a strong fulfillment operation.

**Worst Performing States** — AL, MA, SE and CE have both high late delivery rates above 10% and average review scores below 4.0, indicating these regions suffer on both operational and satisfaction dimensions simultaneously.

**Payment Dominance** — Credit card accounts for R$ 12.5 million in revenue, nearly 78% of total payment value, followed by boleto at R$ 2.9 million.

**Delivery Speed** — Sao Paulo has the fastest average delivery time at 8.3 days while Amapa averages 26.7 days, a three times difference driven by geographic distance from major distribution centers.

**Revenue Concentration** — The top 5 states account for the majority of total revenue with Sao Paulo alone generating R$ 5.2 million, more than double the second highest state Rio de Janeiro.

---

## Author

Arshiyan Mairaj
[LinkedIn](https://linkedin.com/in/arshiyanmairaj/) | [GitHub](https://github.com/Arshiyan7)