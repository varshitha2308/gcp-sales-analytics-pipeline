-- Identify top customers based on revenue

SELECT
  c.customer_name,
  SUM(f.total_amount) AS total_revenue
FROM `conrad-dataops-task.sales_analytics.fact_sales` f
JOIN `conrad-dataops-task.sales_analytics.dim_customer` c
  ON f.customer_id = c.customer_id
GROUP BY c.customer_name
ORDER BY total_revenue DESC;
