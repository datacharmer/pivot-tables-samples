SELECT country AS country 
,sum(CASE WHEN dept_id = '3' AND gender = 'm' THEN salary ELSE NULL END) AS 'dev_m' 
,sum(CASE WHEN dept_id = '3' AND gender = 'f' THEN salary ELSE NULL END) AS 'dev_f' 
,sum(CASE WHEN dept_id = '3' THEN salary ELSE NULL END) AS 'dev' 
,sum(CASE WHEN dept_id = '1' AND gender = 'm' THEN salary ELSE NULL END) AS 'pers_m' 
,sum(CASE WHEN dept_id = '1' AND gender = 'f' THEN salary ELSE NULL END) AS 'pers_f' 
,sum(CASE WHEN dept_id = '1' THEN salary ELSE NULL END) AS 'pers' 
,sum(CASE WHEN dept_id = '2' AND gender = 'm' THEN salary ELSE NULL END) AS 'xtab_sales_m' 
,sum(CASE WHEN dept_id = '2' AND gender = 'f' THEN salary ELSE NULL END) AS 'xtab_sales_f' 
,sum(CASE WHEN dept_id = '2' THEN salary ELSE NULL END) AS 'xtab_sales' 
,sum(salary) AS total
 FROM xtab_countries INNER JOIN xtab_locations using (country_id) INNER JOIN xtab_person USING (loc_id) INNER JOIN xtab_departments USING (dept_id)
 GROUP BY country
UNION
 SELECT 'zzzz' AS country
,sum(CASE WHEN dept_id = '3' AND gender = 'm' THEN salary ELSE NULL END) AS 'dev_m' 
,sum(CASE WHEN dept_id = '3' AND gender = 'f' THEN salary ELSE NULL END) AS 'dev_f' 
,sum(CASE WHEN dept_id = '3' THEN salary ELSE NULL END) AS 'dev' 
,sum(CASE WHEN dept_id = '1' AND gender = 'm' THEN salary ELSE NULL END) AS 'pers_m' 
,sum(CASE WHEN dept_id = '1' AND gender = 'f' THEN salary ELSE NULL END) AS 'pers_f' 
,sum(CASE WHEN dept_id = '1' THEN salary ELSE NULL END) AS 'pers' 
,sum(CASE WHEN dept_id = '2' AND gender = 'm' THEN salary ELSE NULL END) AS 'xtab_sales_m' 
,sum(CASE WHEN dept_id = '2' AND gender = 'f' THEN salary ELSE NULL END) AS 'xtab_sales_f' 
,sum(CASE WHEN dept_id = '2' THEN salary ELSE NULL END) AS 'xtab_sales' 
,sum(salary) AS total
 FROM xtab_countries INNER JOIN xtab_locations using (country_id) INNER JOIN xtab_person USING (loc_id) INNER JOIN xtab_departments USING (dept_id)
 ORDER BY country

