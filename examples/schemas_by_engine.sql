SELECT table_schema AS table_schema 
,count(CASE WHEN engine = 'MEMORY' THEN table_name ELSE NULL END) AS 'MEMORY' 
,count(CASE WHEN engine = 'InnoDB' THEN table_name ELSE NULL END) AS 'InnoDB' 
,count(CASE WHEN engine = NULL THEN table_name ELSE NULL END) AS '' 
,count(CASE WHEN engine = 'MyISAM' THEN table_name ELSE NULL END) AS 'MyISAM' 
,count(CASE WHEN engine = 'CSV' THEN table_name ELSE NULL END) AS 'CSV' 
,count(CASE WHEN engine = 'PERFORMANCE_SCHEMA' THEN table_name ELSE NULL END) AS 'PERFORMANCE_SCHEMA' 
,count(table_name) AS total
 FROM information_schema.tables 
 GROUP BY table_schema
UNION
 SELECT 'zzzz' AS table_schema
,count(CASE WHEN engine = 'MEMORY' THEN table_name ELSE NULL END) AS 'MEMORY' 
,count(CASE WHEN engine = 'InnoDB' THEN table_name ELSE NULL END) AS 'InnoDB' 
,count(CASE WHEN engine = NULL THEN table_name ELSE NULL END) AS '' 
,count(CASE WHEN engine = 'MyISAM' THEN table_name ELSE NULL END) AS 'MyISAM' 
,count(CASE WHEN engine = 'CSV' THEN table_name ELSE NULL END) AS 'CSV' 
,count(CASE WHEN engine = 'PERFORMANCE_SCHEMA' THEN table_name ELSE NULL END) AS 'PERFORMANCE_SCHEMA' 
,count(table_name) AS total
 FROM information_schema.tables 
 ORDER BY table_schema

