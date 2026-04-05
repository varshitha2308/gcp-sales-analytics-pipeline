-- Analyze revenue by product category

SELECT
  p.category,
  SUM(f.total_amount) AS total_revenue
FROM `conrad-dataops-task.sales_analytics.fact_sales` f
JOIN `conrad-dataops-task.sales_analytics.dim_product` p
  ON f.product_id = p.product_id
GROUP BY p.category
ORDER BY total_revenue DESC;
