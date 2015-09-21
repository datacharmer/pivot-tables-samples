SELECT gender AS gender 
,count(CASE WHEN country = 'UK' THEN salary ELSE NULL END) AS 'UK' 
,count(CASE WHEN country = 'Italy' THEN salary ELSE NULL END) AS 'Italy' 
,count(CASE WHEN country = 'Germany' THEN salary ELSE NULL END) AS 'Germany' 
,count(salary) AS total
 FROM all_personnel 
 GROUP BY gender
UNION
 SELECT 'zzzz' AS gender
,count(CASE WHEN country = 'UK' THEN salary ELSE NULL END) AS 'UK' 
,count(CASE WHEN country = 'Italy' THEN salary ELSE NULL END) AS 'Italy' 
,count(CASE WHEN country = 'Germany' THEN salary ELSE NULL END) AS 'Germany' 
,count(salary) AS total
 FROM all_personnel 
 ORDER BY gender

