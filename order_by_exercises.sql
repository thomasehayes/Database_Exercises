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
ORDER BY first_name, last_name;

SELECT *
FROM employees
Where last_name like 'E%' OR last_name like '%E';

SELECT *
FROM employees
Where last_name like 'E%' AND last_name like '%E';

SELECT *
FROM employees
Where birth_date LIKE '%12-25'
AND (hire_date BETWEEN '1990-01-01' AND '1999-12-31');

SELECT * 
FROM employees
Where last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%';
