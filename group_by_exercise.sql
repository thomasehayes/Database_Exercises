use employees;

SELECT DISTINCT title
FROM titles
GROUP BY title;

SELECT *
FROM employees
Where last_name like 'E%E'
GROUP BY first_name, last_name;

SELECT DISTINCT last_name 
FROM employees
Where last_name LIKE '%q%'
	AND last_name NOT LIKE '%qu%';
