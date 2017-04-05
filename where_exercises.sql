USE employees;

SELECT first_name
FROM employees
Where first_name IN ('Irena', 'Vidya','Maya');

SELECT *
FROM employees
Where hire_date between '1990-01-01' AND '1999-12-31';

SELECT *
FROM employees
Where birth_date LIKE '%12-25';

SELECT * 
FROM employees
Where last_name like '%q%';