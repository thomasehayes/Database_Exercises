USE employees;

SELECT *
FROM employees
Where (first_name ='Irena'
OR first_name = 'Vidya' 
OR first_name ='Maya')
AND gender = 'M'
ORDER BY last_name DESC, first_name;

SELECT *
FROM employees
Where last_name like 'E%' AND last_name like '%E'
ORDER BY emp_no DESC;