-- Create dimension table for customers
-- Cleans and structures customer data for analytics

CREATE OR REPLACE TABLE `conrad-dataops-task.sales_analytics.dim_customer` AS
SELECT
  customer_id,
  customer_name,
  segment,
  city,
  country
FROM `conrad-dataops-task.sales_analytics.stg_customers`;
