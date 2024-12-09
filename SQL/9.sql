SELECT
	COUNT(DISTINCT CASE WHEN rnk>=2 THEN company_id END) AS duplicate_companies
FROM
(
	SELECT
		*,
		ROW_NUMBER() OVER(PARTITION BY company_id,title,description) AS rnk
	FROM job_listings
)subquery