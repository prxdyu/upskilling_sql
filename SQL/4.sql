SELECT 
    c.page_id
FROM
(
  SELECT
      a.page_id,
      a.page_name,
      b.user_id,
      b.liked_date
  FROM pages a
  LEFT JOIN page_likes b
  ON a.page_id=b.page_id
)c
WHERE c.user_id IS NULL AND c.liked_date IS NULL
ORDER BY 1