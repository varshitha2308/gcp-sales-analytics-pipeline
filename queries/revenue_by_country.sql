-- Analyze revenue by country

SELECT
  country,
  SUM(total_amount) AS total_revenue
FROM `conrad-dataops-task.sales_analytics.fact_sales`
GROUP BY country
ORDER BY total_revenue DESC;
