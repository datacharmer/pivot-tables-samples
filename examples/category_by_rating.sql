SELECT category AS category 
,avg(CASE WHEN rating = 'PG' THEN length ELSE NULL END) AS 'xavg_PG' 
,avg(CASE WHEN rating = 'G' THEN length ELSE NULL END) AS 'xavg_G' 
,avg(CASE WHEN rating = 'NC-17' THEN length ELSE NULL END) AS 'xavg_NC-17' 
,avg(CASE WHEN rating = 'PG-13' THEN length ELSE NULL END) AS 'xavg_PG-13' 
,avg(CASE WHEN rating = 'R' THEN length ELSE NULL END) AS 'xavg_R' 
,avg(length) AS xavg
,count(CASE WHEN rating = 'PG' THEN FID ELSE NULL END) AS 'xcount_PG' 
,count(CASE WHEN rating = 'G' THEN FID ELSE NULL END) AS 'xcount_G' 
,count(CASE WHEN rating = 'NC-17' THEN FID ELSE NULL END) AS 'xcount_NC-17' 
,count(CASE WHEN rating = 'PG-13' THEN FID ELSE NULL END) AS 'xcount_PG-13' 
,count(CASE WHEN rating = 'R' THEN FID ELSE NULL END) AS 'xcount_R' 
,count(FID) AS xcount
 FROM sakila.film_list
 GROUP BY category
UNION
 SELECT 'zzzz' AS category
,avg(CASE WHEN rating = 'PG' THEN length ELSE NULL END) AS 'xavg_PG' 
,avg(CASE WHEN rating = 'G' THEN length ELSE NULL END) AS 'xavg_G' 
,avg(CASE WHEN rating = 'NC-17' THEN length ELSE NULL END) AS 'xavg_NC-17' 
,avg(CASE WHEN rating = 'PG-13' THEN length ELSE NULL END) AS 'xavg_PG-13' 
,avg(CASE WHEN rating = 'R' THEN length ELSE NULL END) AS 'xavg_R' 
,avg(length) AS xavg
,count(CASE WHEN rating = 'PG' THEN FID ELSE NULL END) AS 'xcount_PG' 
,count(CASE WHEN rating = 'G' THEN FID ELSE NULL END) AS 'xcount_G' 
,count(CASE WHEN rating = 'NC-17' THEN FID ELSE NULL END) AS 'xcount_NC-17' 
,count(CASE WHEN rating = 'PG-13' THEN FID ELSE NULL END) AS 'xcount_PG-13' 
,count(CASE WHEN rating = 'R' THEN FID ELSE NULL END) AS 'xcount_R' 
,count(FID) AS xcount
 FROM sakila.film_list
 ORDER BY category

