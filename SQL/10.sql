SELECT
    city,
    COUNT(DISTINCT order_id) AS total_orders
FROM
(SELECT
    users.user_id,
    users.city,
    trades.order_id,
    trades.status
FROM users
LEFT JOIN trades
ON users.user_id=trades.user_id
WHERE trades.status='Completed'
)  subquery
GROUP BY 1
ORDER BY 2 DESC
LIMIT 3