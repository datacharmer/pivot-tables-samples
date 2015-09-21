SELECT country AS country 
,count(CASE WHEN department = 'pers' AND gender = 'm' THEN salary ELSE NULL END) AS 'pers_m' 
,count(CASE WHEN department = 'pers' AND gender = 'f' THEN salary ELSE NULL END) AS 'pers_f' 
,count(CASE WHEN department = 'pers' THEN salary ELSE NULL END) AS 'pers' 
,count(CASE WHEN department = 'xtab_sales' AND gender = 'm' THEN salary ELSE NULL END) AS 'xtab_sales_m' 
,count(CASE WHEN department = 'xtab_sales' AND gender = 'f' THEN salary ELSE NULL END) AS 'xtab_sales_f' 
,count(CASE WHEN department = 'xtab_sales' THEN salary ELSE NULL END) AS 'xtab_sales' 
,count(CASE WHEN department = 'dev' AND gender = 'm' THEN salary ELSE NULL END) AS 'dev_m' 
,count(CASE WHEN department = 'dev' AND gender = 'f' THEN salary ELSE NULL END) AS 'dev_f' 
,count(CASE WHEN department = 'dev' THEN salary ELSE NULL END) AS 'dev' 
,count(salary) AS total
 FROM all_personnel 
 GROUP BY country
UNION
 SELECT 'zzzz' AS country
,count(CASE WHEN department = 'pers' AND gender = 'm' THEN salary ELSE NULL END) AS 'pers_m' 
,count(CASE WHEN department = 'pers' AND gender = 'f' THEN salary ELSE NULL END) AS 'pers_f' 
,count(CASE WHEN department = 'pers' THEN salary ELSE NULL END) AS 'pers' 
,count(CASE WHEN department = 'xtab_sales' AND gender = 'm' THEN salary ELSE NULL END) AS 'xtab_sales_m' 
,count(CASE WHEN department = 'xtab_sales' AND gender = 'f' THEN salary ELSE NULL END) AS 'xtab_sales_f' 
,count(CASE WHEN department = 'xtab_sales' THEN salary ELSE NULL END) AS 'xtab_sales' 
,count(CASE WHEN department = 'dev' AND gender = 'm' THEN salary ELSE NULL END) AS 'dev_m' 
,count(CASE WHEN department = 'dev' AND gender = 'f' THEN salary ELSE NULL END) AS 'dev_f' 
,count(CASE WHEN department = 'dev' THEN salary ELSE NULL END) AS 'dev' 
,count(salary) AS total
 FROM all_personnel 
 ORDER BY country

