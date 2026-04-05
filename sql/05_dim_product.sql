-- Create dimension table for products
-- Used for product-level analysis

CREATE OR REPLACE TABLE `conrad-dataops-task.sales_analytics.dim_product` AS
SELECT
  product_id,
  product_name,
  category
FROM `conrad-dataops-task.sales_analytics.stg_products`;
