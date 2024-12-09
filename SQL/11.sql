SELECT 
  EXTRACT(MONTH FROM submit_date) AS mth,
  product_id,
  ROUND(AVG(stars),2)
FROM reviews
GROUP BY 1,2
ORDER BY 1,2