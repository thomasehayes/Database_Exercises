use employees;

-- Craft queries to return the results for the following criteria:

	-- Find all the employees with the same hire date as employee 101010 using a sub-query.
SELECT concat(first_name, ' ', last_name) AS 'Name'
FROM employees
WHERE hire_date IN (
	SELECT hire_date
	FROM employees
	WHERE emp_no = 101010
	);

	-- Find all the titles held by all employees with the first name Aamod.
SELECT title
FROM titles
WHERE emp_no IN (
	SELECT emp_no
	FROM employees
	WHERE first_name = 'Aamod'
);

	-- Find all the department managers that are female.
SELECT first_name, last_name
FROM employees
WHERE gender = 'F' 
AND emp_no IN (
	SELECT emp_no
	FROM dept_manager
);

	-- BONUS Find all the department names that have female managers.
SELECT dept_name AS "Department Name"
FROM departments
WHERE dept_no IN (
	SELECT dept_no
	FROM dept_manager
	WHERE emp_no IN (
		SELECT emp_no
		FROM employees
		WHERE gender = "F"));
