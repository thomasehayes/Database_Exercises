USE employees;

SELECT count(*), gender
FROM employees
Where first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;

SELECT CONCAT(first_name, ' ', last_name)
FROM employees
Where last_name like 'E%' AND last_name like '%E'
ORDER BY emp_no DESC;

SELECT DATEDIFF(now(), hire_date)
FROM employees
Where birth_date LIKE '%12-25'
	AND (hire_date BETWEEN '1990-01-01' AND '1999-12-31')
ORDER BY DATEDIFF(now(), hire_date);

SELECT CONCAT(count(*),' ', first_name, ' ', last_name) 
FROM employees
Where last_name LIKE '%q%'
	AND last_name NOT LIKE '%qu%'
GROUP BY last_name, first_name
ORDER BY CONCAT(count(*),' ', first_name, ' ', last_name) DESC;

SELECT CONCAT(emp_no, ' - ',last_name, ', ', first_name) as full_name, birth_date as DOB
from employees
limit 10;