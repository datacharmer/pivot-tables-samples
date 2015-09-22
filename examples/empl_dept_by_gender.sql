SELECT dept_name AS dept_name 
,count(CASE WHEN gender = 'M' THEN emp_no ELSE NULL END) AS 'M' 
,count(CASE WHEN gender = 'F' THEN emp_no ELSE NULL END) AS 'F' 
,count(emp_no) AS total
 FROM employees.current_dept_emp inner join employees.departments using (dept_no) inner join employees.employees using (emp_no) 
 GROUP BY dept_name
UNION
 SELECT 'zzzz' AS dept_name
,count(CASE WHEN gender = 'M' THEN emp_no ELSE NULL END) AS 'M' 
,count(CASE WHEN gender = 'F' THEN emp_no ELSE NULL END) AS 'F' 
,count(emp_no) AS total
 FROM employees.current_dept_emp inner join employees.departments using (dept_no) inner join employees.employees using (emp_no) 
 ORDER BY dept_name

