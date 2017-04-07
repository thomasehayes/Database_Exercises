use employees;

-- Craft queries to return the results for the following criteria:

	-- Find all the employees with the same hire date as employee 101010 using a sub-query.
SELECT * 
FROM employees
WHERE hire_date IN (
	SELECT hire_date
	FROM employees
	WHERE emp_no = 101010
	);

	-- Find all the titles held by all employees with the first name Aamod.


	-- Find all the department managers that are female.


	-- BONUS Find all the department names that have female managers.