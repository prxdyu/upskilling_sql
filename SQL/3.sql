SELECT
    a.candidate_id
FROM
   (SELECT *
    FROM candidates
    WHERE skill  IN ('Python','Tableau','PostgreSQL')
    )a
GROUP BY 1
HAVING COUNT(DISTINCT skill)=3