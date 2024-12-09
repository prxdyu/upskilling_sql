SELECT
	COUNT(DISTINCT CASE WHEN device_type IN ('tablet','phone') THEN user_id END) AS mobile_views,
	COUNT(DISTINCT CASE WHEN device_type IN ('laptop') THEN user_id END) AS laptop_views
FROM viewership