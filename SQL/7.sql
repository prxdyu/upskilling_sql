SELECT 
    user_id,
    (MAX(post_date) - MIN(post_date)) AS days_between
FROM posts
WHERE EXTRACT(YEAR FROM post_date) = 2021
GROUP BY user_id
HAVING COUNT(DISTINCT post_id) >= 2;