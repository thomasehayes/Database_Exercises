USE employees;

SELECT count(*), gender
FROM employees
Where first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;

SELECT *
FROM employees
Where last_name like 'E%' AND last_name like '%E'
ORDER BY emp_no DESC;

SELECT *
FROM employees
Where birth_date LIKE '%12-25'
	AND (hire_date BETWEEN '1990-01-01' AND '1999-12-31')
ORDER BY birth_date, hire_date DESC;