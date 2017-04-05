USE employees;

SELECT first_name
FROM employees
Where first_name IN ('Irena', 'Vidya','Maya');

SELECT last_name
FROM employees
Where last_name like 'E%';

SELECT *
FROM employees
Where hire_date between '1990-01-01' AND '1999-12-31';

SELECT *
FROM employees
Where birth_date LIKE '%12-25';

SELECT * 
FROM employees
Where last_name like '%q%';

SELECT first_name
FROM employees
Where first_name ='Irena'
OR first_name = 'Vidya' 
OR first_name ='Maya';

SELECT first_name
FROM employees
Where (first_name ='Irena'
OR first_name = 'Vidya' 
OR first_name ='Maya')
AND gender = 'M';

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
