-- Create staging table for products
-- Stores product-level details

CREATE OR REPLACE TABLE `conrad-dataops-task.sales_analytics.stg_products` AS
SELECT 'P001' AS product_id, 'Headphones' AS product_name, 'Electronics' AS category
UNION ALL
SELECT 'P002', 'Laptop', 'Electronics'
UNION ALL
SELECT 'P003', 'Office Chair', 'Furniture';
