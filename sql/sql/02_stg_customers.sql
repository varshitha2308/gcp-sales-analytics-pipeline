-- Create staging table for customers
-- Contains customer master data

CREATE OR REPLACE TABLE `conrad-dataops-task.sales_analytics.stg_customers` AS
SELECT 'C001' AS customer_id, 'Riya Sharma' AS customer_name, 'Retail' AS segment, 'Mumbai' AS city, 'India' AS country
UNION ALL
SELECT 'C002', 'John Miller', 'Corporate', 'New York', 'USA'
UNION ALL
SELECT 'C003', 'Alex Brown', 'Small Biz', 'London', 'UK';
