SELECT category AS category 
,count(CASE WHEN release_year = '2004' THEN FID ELSE NULL END) AS '2004' 
,count(CASE WHEN release_year = '2006' THEN FID ELSE NULL END) AS '2006' 
,count(CASE WHEN release_year = '2003' THEN FID ELSE NULL END) AS '2003' 
,count(CASE WHEN release_year = '2002' THEN FID ELSE NULL END) AS '2002' 
,count(CASE WHEN release_year = '2001' THEN FID ELSE NULL END) AS '2001' 
,count(CASE WHEN release_year = '1999' THEN FID ELSE NULL END) AS '1999' 
,count(CASE WHEN release_year = '2008' THEN FID ELSE NULL END) AS '2008' 
,count(CASE WHEN release_year = '2005' THEN FID ELSE NULL END) AS '2005' 
,count(FID) AS total
 FROM sakila.film_list 
 GROUP BY category
UNION
 SELECT 'zzzz' AS category
,count(CASE WHEN release_year = '2004' THEN FID ELSE NULL END) AS '2004' 
,count(CASE WHEN release_year = '2006' THEN FID ELSE NULL END) AS '2006' 
,count(CASE WHEN release_year = '2003' THEN FID ELSE NULL END) AS '2003' 
,count(CASE WHEN release_year = '2002' THEN FID ELSE NULL END) AS '2002' 
,count(CASE WHEN release_year = '2001' THEN FID ELSE NULL END) AS '2001' 
,count(CASE WHEN release_year = '1999' THEN FID ELSE NULL END) AS '1999' 
,count(CASE WHEN release_year = '2008' THEN FID ELSE NULL END) AS '2008' 
,count(CASE WHEN release_year = '2005' THEN FID ELSE NULL END) AS '2005' 
,count(FID) AS total
 FROM sakila.film_list 
 ORDER BY category

