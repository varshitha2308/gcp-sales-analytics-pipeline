-- Layer: Staging
-- Source: Raw transactional data
-- Create staging table for orders
-- This table stores raw order-level transactional data

CREATE OR REPLACE TABLE `conrad-dataops-task.sales_analytics.stg_orders` AS
SELECT
  1 AS order_id, DATE '2024-01-05' AS order_date, 'C001' AS customer_id, 'P001' AS product_id, 2 AS quantity, 500 AS unit_price, 'India' AS country
UNION ALL
SELECT 2, DATE '2024-01-06', 'C002', 'P002', 1, 1200, 'USA'
UNION ALL
SELECT 3, DATE '2024-01-06', 'C003', 'P001', 3, 500, 'India'
UNION ALL
SELECT 4, DATE '2024-01-07', 'C001', 'P003', 1, 800, 'UK'
UNION ALL
SELECT 5, DATE '2024-01-08', 'C002', 'P002', 2, 1200, 'Germany';
