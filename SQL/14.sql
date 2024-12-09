SELECT 
      a.app_id,
     ROUND(( a.clicks/a.impressions)*100.0,2) AS ctr
  FROM
  (
  
  SELECT
    app_id,
    SUM(CASE WHEN event_type = 'click' THEN 1 ELSE 0 END) AS clicks,
    SUM(CASE WHEN event_type = 'impression' THEN 1 ELSE 0 END) AS impressions
  FROM events
  WHERE EXTRACT(YEAR FROM timestamp) = 2022
  GROUP BY app_id
  )a