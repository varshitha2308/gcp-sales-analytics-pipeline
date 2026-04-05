-- Create fact table for sales
-- Combines transactional data and calculates revenue

CREATE OR REPLACE TABLE `conrad-dataops-task.sales_analytics.fact_sales` AS
SELECT
  o.order_id,
  o.order_date,
  o.customer_id,
  o.product_id,
  o.quantity,
  o.unit_price,
  (o.quantity * o.unit_price) AS total_amount,
  o.country
FROM `conrad-dataops-task.sales_analytics.stg_orders` o;
