-- =============================================================
-- Olist E-Commerce SQL Analysis
-- Tool: PostgreSQL
-- Dataset: Olist Brazilian E-Commerce (Cleaned)
-- =============================================================


-- =============================================================
-- BASIC
-- =============================================================

-- Q1: Which payment type generates the most revenue?
SELECT payment_type, ROUND(SUM(payment_value)::numeric, 2) AS total_revenue
FROM payments
WHERE payment_type != 'Unknown'
GROUP BY payment_type
ORDER BY total_revenue DESC;


-- Q2: Which sellers are in the top 10 by revenue?
SELECT seller_id, SUM(ROUND(price)) AS total_revenue 
FROM items 
GROUP BY seller_id
ORDER BY total_revenue DESC
LIMIT 10;


-- Q3: What are the top 5 states by total revenue?
SELECT c.customer_state, SUM(ROUND(i.price)) AS total_revenue 
FROM customers c 
JOIN orders o ON c.customer_id = o.customer_id 
JOIN items i ON i.order_id = o.order_id
GROUP BY c.customer_state
ORDER BY total_revenue DESC
LIMIT 5;


-- =============================================================
-- INTERMEDIATE
-- =============================================================

-- Q4: What is the monthly revenue trend over time?
SELECT TO_CHAR(o.order_purchase_timestamp, 'Month YYYY') AS month_year,
SUM(ROUND(i.price)) AS total_revenue 
FROM orders o 
JOIN items i ON i.order_id = o.order_id
GROUP BY TO_CHAR(o.order_purchase_timestamp, 'Month YYYY')
ORDER BY MIN(o.order_purchase_timestamp);


-- Q5: What is the average review score per payment type?
SELECT p.payment_type, ROUND(AVG(r.review_score)::numeric, 2) AS average_review  
FROM reviews r
JOIN payments p ON r.order_id = p.order_id
WHERE p.payment_type != 'Unknown'
GROUP BY p.payment_type
ORDER BY average_review DESC;


-- Q6: How many orders did each customer state place and what is their average order value?
SELECT c.customer_state,
COUNT(o.order_id) AS total_orders,
ROUND(AVG(i.price)::numeric, 2) AS avg_order_value 
FROM customers c 
JOIN orders o ON o.customer_id = c.customer_id
JOIN items i ON o.order_id = i.order_id
GROUP BY c.customer_state
ORDER BY total_orders DESC;


-- Q7: What is the average delivery time in days per customer state?
SELECT c.customer_state, 
ROUND(AVG(EXTRACT(DAY FROM (o.order_delivered_customer_date - o.order_purchase_timestamp)))::numeric, 2) AS delivery_days
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_delivered_customer_date IS NOT NULL
GROUP BY c.customer_state
ORDER BY delivery_days ASC;


-- =============================================================
-- ADVANCED
-- =============================================================

-- Q8: What percentage of orders were delivered late?
WITH total_orders AS (
    SELECT COUNT(order_id) AS total_orders_count 
    FROM orders 
    WHERE order_status = 'delivered'
),
late_orders AS (
    SELECT COUNT(order_id) AS late_orders_count 
    FROM orders
    WHERE order_delivered_customer_date > order_estimated_delivery_date
)
SELECT ROUND(late_orders_count * 100.0 / total_orders_count, 2) AS late_percentage
FROM total_orders, late_orders;


-- Q9: What percentage of orders were delivered late per customer state?
WITH total_orders AS (
    SELECT COUNT(o.order_id) AS total_orders_count, c.customer_state 
    FROM orders o
    JOIN customers c ON c.customer_id = o.customer_id
    WHERE order_status = 'delivered'
    GROUP BY customer_state
),
late_orders AS (
    SELECT COUNT(order_id) AS late_orders_count, c.customer_state 
    FROM orders o
    JOIN customers c ON c.customer_id = o.customer_id
    WHERE order_delivered_customer_date > order_estimated_delivery_date
    GROUP BY customer_state
)
SELECT t.customer_state,
ROUND(l.late_orders_count * 100.0 / t.total_orders_count, 2) AS late_percentage
FROM total_orders t
JOIN late_orders l ON t.customer_state = l.customer_state
ORDER BY late_percentage DESC;


-- Q10: Which states have both high late delivery rate and low review score?
WITH review_score AS (
    SELECT c.customer_state, ROUND(AVG(r.review_score)::numeric,2) AS average_review 
    FROM customers c
    JOIN orders o ON c.customer_id = o.customer_id
    JOIN reviews r ON r.order_id = o.order_id
    GROUP BY c.customer_state
),
total_orders AS (
    SELECT COUNT(o.order_id) AS total_orders_count, c.customer_state 
    FROM orders o
    JOIN customers c ON c.customer_id = o.customer_id
    WHERE order_status = 'delivered'
    GROUP BY c.customer_state
),
late_orders AS (
    SELECT COUNT(order_id) AS late_orders_count, c.customer_state 
    FROM orders o
    JOIN customers c ON c.customer_id = o.customer_id
    WHERE order_delivered_customer_date > order_estimated_delivery_date
    GROUP BY c.customer_state
)
SELECT 
    r.customer_state,
    r.average_review,
    ROUND(l.late_orders_count * 100.0 / t.total_orders_count, 2) AS late_percentage
FROM review_score r
JOIN total_orders t ON r.customer_state = t.customer_state
JOIN late_orders l ON r.customer_state = l.customer_state
WHERE ROUND(l.late_orders_count * 100.0 / t.total_orders_count, 2) > 10
AND r.average_review < 4.0
ORDER BY late_percentage DESC;