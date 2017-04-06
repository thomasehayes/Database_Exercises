SELECT users.name as user_name, roles.name as role_name
FROM users
JOIN roles ON users.role_id = roles.id;

SELECT users.name as user_name, roles.name as role_name
FROM roles
LEFT JOIN users ON users.role_id = roles.id;

SELECT users.name AS user_name, roles.name AS role_name
FROM roles
RIGHT JOIN users ON users.role_id = roles.id;

SELECT roles.name as role_name, count(roles.name) AS role_count
FROM roles
LEFT JOIN users ON users.role_id = roles.id
GROUP BY role_name;

SELECT departments.dept_name AS 'Department Name', concat(employees.first_name, ' ', employees.last_name) AS 'Department Manager'
FROM employees
JOIN dept_manager ON dept_manager.emp_no = employees.emp_no
JOIN departments ON departments.dept_no = dept_manager.dept_no
WHERE dept_manager.to_date > now();

SELECT departments.dept_name AS 'Department Name', concat(employees.first_name, ' ', employees.last_name) AS 'Department Manager'
FROM employees
JOIN dept_manager ON dept_manager.emp_no = employees.emp_no
JOIN departments ON departments.dept_no = dept_manager.dept_no
WHERE dept_manager.to_date > now() AND gender ='F';

SELECT title AS "Titles", count(title) AS "Count"
FROM titles
JOIN dept_emp ON titles.emp_no =dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_no = 'd009' AND titles.to_date > now()
GROUP BY title;

SELECT departments.dept_name AS 'Department Name', concat(employees.first_name, ' ', employees.last_name) AS 'Department Manager', salaries.salary AS Salary
FROM employees
JOIN dept_manager ON dept_manager.emp_no = employees.emp_no
JOIN salaries ON salaries.emp_no = dept_manager.emp_no
JOIN departments ON departments.dept_no = dept_manager.dept_no
WHERE dept_manager.to_date > now() AND salaries.to_date > now();

SELECT concat(employees.first_name, ' ', employees.last_name) AS 'Employee Name', departments.dept_name AS 'Department Name', concat(manager.first_name, ' ', manager.last_name) AS 'Manager Name'
FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
JOIN employees AS manager ON manager.emp_no = dept_manager.emp_no
WHERE dept_emp.to_date > now() AND dept_manager.to_date > now();


-- Bonus Exercises:
-- Using what you know about writing SQL Queries, write joins/queries that 
-- answer the following questions:
--       1. Historic average salary of female managers vs. male managers
--       2. Current average salary of female managers vs. male managers
--       3. Historic average salary of female workers vs. male workers
        
--       4. Current average salary of female workers vs. male workers
--       5. Current count of female managers vs male managers
SELECT count(concat(dm.emp_no)) AS 'Department Manager', gender AS "Gender"
FROM employees AS e
JOIN dept_manager AS dm ON dm.emp_no = e.emp_no
JOIN departments AS dept ON dept.dept_no = dm.dept_no
WHERE dm.to_date > now() 
GROUP BY gender;
--       6. Current count of female engineers vs. male engineers
SELECT count(t.emp_no) AS 'Engineers', gender AS "Gender"
FROM employees AS e
JOIN titles AS t ON t.emp_no = e.emp_no
WHERE t.to_date > now() AND t.title LIKE '%engineer%'
GROUP BY gender
ORDER BY gender DESC;


