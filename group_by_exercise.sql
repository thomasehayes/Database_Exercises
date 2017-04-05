use employees;

SELECT DISTINCT title
FROM titles
GROUP BY title;

SELECT DISTINCT last_name
FROM employees
Where last_name like 'E%' AND last_name like '%E'
GROUP BY last_name;
