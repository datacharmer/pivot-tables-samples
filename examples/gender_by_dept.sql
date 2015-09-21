SELECT gender AS gender 
,count(CASE WHEN dept_name = 'Customer Service' THEN emp_no ELSE NULL END) AS 'Customer Service' 
,count(CASE WHEN dept_name = 'Development' THEN emp_no ELSE NULL END) AS 'Development' 
,count(CASE WHEN dept_name = 'Finance' THEN emp_no ELSE NULL END) AS 'Finance' 
,count(CASE WHEN dept_name = 'Human Resources' THEN emp_no ELSE NULL END) AS 'Human Resources' 
,count(CASE WHEN dept_name = 'Marketing' THEN emp_no ELSE NULL END) AS 'Marketing' 
,count(CASE WHEN dept_name = 'Production' THEN emp_no ELSE NULL END) AS 'Production' 
,count(CASE WHEN dept_name = 'Quality Management' THEN emp_no ELSE NULL END) AS 'Quality Management' 
,count(CASE WHEN dept_name = 'Research' THEN emp_no ELSE NULL END) AS 'Research' 
,count(CASE WHEN dept_name = 'Sales' THEN emp_no ELSE NULL END) AS 'Sales' 
,count(emp_no) AS total
 FROM employees.dept_emp inner join employees.departments using (dept_no) inner join employees.employees using (emp_no) 
 GROUP BY gender
UNION
 SELECT 'zzzz' AS gender
,count(CASE WHEN dept_name = 'Customer Service' THEN emp_no ELSE NULL END) AS 'Customer Service' 
,count(CASE WHEN dept_name = 'Development' THEN emp_no ELSE NULL END) AS 'Development' 
,count(CASE WHEN dept_name = 'Finance' THEN emp_no ELSE NULL END) AS 'Finance' 
,count(CASE WHEN dept_name = 'Human Resources' THEN emp_no ELSE NULL END) AS 'Human Resources' 
,count(CASE WHEN dept_name = 'Marketing' THEN emp_no ELSE NULL END) AS 'Marketing' 
,count(CASE WHEN dept_name = 'Production' THEN emp_no ELSE NULL END) AS 'Production' 
,count(CASE WHEN dept_name = 'Quality Management' THEN emp_no ELSE NULL END) AS 'Quality Management' 
,count(CASE WHEN dept_name = 'Research' THEN emp_no ELSE NULL END) AS 'Research' 
,count(CASE WHEN dept_name = 'Sales' THEN emp_no ELSE NULL END) AS 'Sales' 
,count(emp_no) AS total
 FROM employees.dept_emp inner join employees.departments using (dept_no) inner join employees.employees using (emp_no) 
 ORDER BY gender

