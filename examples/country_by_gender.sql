SELECT country AS country 
,count(CASE WHEN dept_id = '3' AND gender = 'm' THEN salary ELSE NULL END) AS 'dev_m' 
,count(CASE WHEN dept_id = '3' AND gender = 'f' THEN salary ELSE NULL END) AS 'dev_f' 
,count(CASE WHEN dept_id = '3' THEN salary ELSE NULL END) AS 'dev' 
,count(CASE WHEN dept_id = '1' AND gender = 'm' THEN salary ELSE NULL END) AS 'pers_m' 
,count(CASE WHEN dept_id = '1' AND gender = 'f' THEN salary ELSE NULL END) AS 'pers_f' 
,count(CASE WHEN dept_id = '1' THEN salary ELSE NULL END) AS 'pers' 
,count(CASE WHEN dept_id = '4' AND gender = 'm' THEN salary ELSE NULL END) AS 'research_m' 
,count(CASE WHEN dept_id = '4' AND gender = 'f' THEN salary ELSE NULL END) AS 'research_f' 
,count(CASE WHEN dept_id = '4' THEN salary ELSE NULL END) AS 'research' 
,count(CASE WHEN dept_id = '2' AND gender = 'm' THEN salary ELSE NULL END) AS 'xtab_sales_m' 
,count(CASE WHEN dept_id = '2' AND gender = 'f' THEN salary ELSE NULL END) AS 'xtab_sales_f' 
,count(CASE WHEN dept_id = '2' THEN salary ELSE NULL END) AS 'xtab_sales' 
,count(salary) AS total
 FROM xtab_countries INNER JOIN xtab_locations using (country_id) INNER JOIN xtab_person USING (loc_id) INNER JOIN xtab_departments USING (dept_id)
 GROUP BY country
UNION
 SELECT 'zzzz' AS country
,count(CASE WHEN dept_id = '3' AND gender = 'm' THEN salary ELSE NULL END) AS 'dev_m' 
,count(CASE WHEN dept_id = '3' AND gender = 'f' THEN salary ELSE NULL END) AS 'dev_f' 
,count(CASE WHEN dept_id = '3' THEN salary ELSE NULL END) AS 'dev' 
,count(CASE WHEN dept_id = '1' AND gender = 'm' THEN salary ELSE NULL END) AS 'pers_m' 
,count(CASE WHEN dept_id = '1' AND gender = 'f' THEN salary ELSE NULL END) AS 'pers_f' 
,count(CASE WHEN dept_id = '1' THEN salary ELSE NULL END) AS 'pers' 
,count(CASE WHEN dept_id = '4' AND gender = 'm' THEN salary ELSE NULL END) AS 'research_m' 
,count(CASE WHEN dept_id = '4' AND gender = 'f' THEN salary ELSE NULL END) AS 'research_f' 
,count(CASE WHEN dept_id = '4' THEN salary ELSE NULL END) AS 'research' 
,count(CASE WHEN dept_id = '2' AND gender = 'm' THEN salary ELSE NULL END) AS 'xtab_sales_m' 
,count(CASE WHEN dept_id = '2' AND gender = 'f' THEN salary ELSE NULL END) AS 'xtab_sales_f' 
,count(CASE WHEN dept_id = '2' THEN salary ELSE NULL END) AS 'xtab_sales' 
,count(salary) AS total
 FROM xtab_countries INNER JOIN xtab_locations using (country_id) INNER JOIN xtab_person USING (loc_id) INNER JOIN xtab_departments USING (dept_id)
 ORDER BY country

