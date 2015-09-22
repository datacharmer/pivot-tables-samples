SELECT category AS category 
,avg(CASE WHEN rating = 'PG' THEN length ELSE NULL END) AS 'PG' 
,avg(CASE WHEN rating = 'G' THEN length ELSE NULL END) AS 'G' 
,avg(CASE WHEN rating = 'NC-17' THEN length ELSE NULL END) AS 'NC-17' 
,avg(CASE WHEN rating = 'PG-13' THEN length ELSE NULL END) AS 'PG-13' 
,avg(CASE WHEN rating = 'R' THEN length ELSE NULL END) AS 'R' 
,avg(length) AS total
 FROM sakila.film_list
 GROUP BY category
UNION
 SELECT 'zzzz' AS category
,avg(CASE WHEN rating = 'PG' THEN length ELSE NULL END) AS 'PG' 
,avg(CASE WHEN rating = 'G' THEN length ELSE NULL END) AS 'G' 
,avg(CASE WHEN rating = 'NC-17' THEN length ELSE NULL END) AS 'NC-17' 
,avg(CASE WHEN rating = 'PG-13' THEN length ELSE NULL END) AS 'PG-13' 
,avg(CASE WHEN rating = 'R' THEN length ELSE NULL END) AS 'R' 
,avg(length) AS total
 FROM sakila.film_list
 ORDER BY category

