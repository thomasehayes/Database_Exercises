USE employees;

SELECT *
FROM employees
Where (first_name ='Irena'
OR first_name = 'Vidya' 
OR first_name ='Maya')
AND gender = 'M'
ORDER BY first_name;

SELECT *
FROM employees
Where (first_name ='Irena'
OR first_name = 'Vidya' 
OR first_name ='Maya')
AND gender = 'M'
ORDER BY last_name, first_name;
