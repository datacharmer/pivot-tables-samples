SELECT department AS department 
,count(CASE WHEN gender = 'm' THEN name ELSE NULL END) AS 'm' 
,count(CASE WHEN gender = 'f' THEN name ELSE NULL END) AS 'f' 
,count(name) AS total
 FROM all_personnel
 GROUP BY department
UNION
 SELECT 'zzzz' AS department
,count(CASE WHEN gender = 'm' THEN name ELSE NULL END) AS 'm' 
,count(CASE WHEN gender = 'f' THEN name ELSE NULL END) AS 'f' 
,count(name) AS total
 FROM all_personnel
 ORDER BY department

