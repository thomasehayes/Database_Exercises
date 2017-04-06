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