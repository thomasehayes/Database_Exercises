use employees;

SELECT DISTINCT title
FROM titles
GROUP BY title;

SELECT *
FROM employees
Where last_name like 'E%' AND last_name like '%E'
GROUP BY first_name, last_name;
